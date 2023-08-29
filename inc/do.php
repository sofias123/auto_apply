<?php

// session_start();

if (isset($_POST['Do'])) {
    $msg = ['id' => 0, 'msg' => 'Try Again'];

    include 'class.php';

    $data = $_POST['data'];

    $newClass = new functions();

    // session_write_close();

    if ($_POST['Do'] == 'AddResumeDetails') {
        $sql = 'select userID from rms_user where email = "'.$data['email'].'" ';
        $res = $newClass->query($sql);

        if ($res && mysqli_num_rows($res) >= 1) {
            $msg['msg'] = 'Email ID already exists';
            die(json_encode($msg));
        } elseif (!$res) {
            $msg['msg'] = 'Something went wrong';
            $msg['error'] = $newClass->error();
            $msg['sql'] = $sql;
            die(json_encode($msg));
        }

        $sql = 'insert into rms_user(firstName,email,dob,mobile,city,status,password,des_role) values( "'.$data['name'].'", "'.$data['email'].'", "'.$data['dob'].'", "'.password_hash($data['mobile'], PASSWORD_BCRYPT).'", "'.$data['place'].'",1, "'.password_hash($data['password'], PASSWORD_BCRYPT).'", "'.$data['des_role'].'" )';
        $res = $newClass->query($sql);
        if (!$res) {
            $msg['msg'] = 'Something went wrong';
            $msg['error'] = $newClass->error();
            $msg['sql'] = $sql;
            die(json_encode($msg));
        }
        $uid = $newClass->lastID();

        $sql = 'insert into rms_resume_details(userID,fileName,resumeText,status,password,des_role) values ( "'.$uid.'", "'.$data['filename'].'", "'.$data['resumeText'].'", 1, "'.password_hash($data['password'], PASSWORD_BCRYPT).'", "'.$data['des_role'].'" )';
        $res = $newClass->query($sql);

        if ($res) {
            $msg['id'] = 1;
            $msg['msg'] = 'Inserted successfully';
            $msg['username'] = $data['name'];
            $_SESSION['applyRole'] = $data['des_role'];
        } else {
            $msg['msg'] = 'Something went wrong';
            $msg['error'] = $newClass->error();
            $msg['sql'] = $sql;
        }
        die(json_encode($msg));
    }  else if ($_POST['Do'] == 'CheckLoginCred') {
        $sql = 'select userID,password,des_role,firstName from rms_user where email = "'.$data['email'].'" ';
        $res = $newClass->query($sql);

        if ($res && mysqli_num_rows($res) >= 1) {
            $row = mysqli_fetch_assoc($res);
            if(password_verify($data['password'], $row['password'])) {
                $msg['id'] = 1;
                $msg['msg'] = 'Loggedin Successfully';
                $msg['username'] = $row['firstName'];
                $_SESSION['loginPageVisited'] = true;
                $_SESSION['applyRole'] = $row['des_role'];
                $role =  $row['des_role'];
                
            } else {
                
                $msg['msg'] = 'Invalid Crendentials';
                $msg['error'] = $newClass->error();
                $msg['sql'] = $sql;
            }
        } elseif (!$res) {
            
            $msg['msg'] = 'Invalid Crendentials';
            $msg['error'] = $newClass->error();
            $msg['sql'] = $sql;
        }
        die(json_encode($msg));
    } else if($_POST['Do'] == 'autoApply') {

        $command = "python3 jobapply.py";
        $pythonOutput = exec($command);

        echo $pythonOutput;

    }
}


