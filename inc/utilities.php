<?php

// session_start();

if (isset($_POST['Do'])) {
    $msg = ['id' => 0, 'msg' => 'Try Again'];

    include 'class.php';

    $data = $_POST['data'];

    $newClass = new functions();

    // session_write_close();

    if ($_POST['Do'] == 'applyforthejob') {
        $sql = 'INSERT INTO rms_jobs(jobID, jobUniqueID, projectName, jobTitle, totalPositions, minExp, maxExp, jobType, jobCity, jobCountry, priority, duration, salary, primSkills, secSkills, startDate, endDate, jobDesc, clientID, visaID, createdOn, modifiedOn, status, email, showEmail, hotJob, userID, showJob, showClient) VALUES ("'.$data.'")';
       $res = $newClass->query($sql);
        if (!$res) {
            $msg['msg'] = 'Something went wrong';
            $msg['error'] = $newClass->error();
            $msg['sql'] = $sql;
            die(json_encode($msg));
        }
        $uid = $newClass->lastID();

        if ($res) {
            $msg['id'] = 1;
            $msg['msg'] = 'Inserted successfully';
            $_SESSION['applyRole'] = $data['des_role'];
        } else {
            $msg['msg'] = 'Something went wrong';
            $msg['error'] = $newClass->error();
            $msg['sql'] = $sql;
        }
        die(json_encode($msg));
    }  else if ($_POST['Do'] == 'CheckLoginCred') {
        $sql = 'select userID,password,des_role from rms_user where email = "'.$data['email'].'" ';
        $res = $newClass->query($sql);

        if ($res && mysqli_num_rows($res) >= 1) {
            $row = mysqli_fetch_assoc($res);
            if(password_verify($data['password'], $row['password'])) {
                $msg['id'] = 1;
                $msg['msg'] = 'Loggedin Successfully';
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

function cosineSimilarity($vectorA, $vectorB) {
    $dotProduct = 0;
    $normA = 0;
    $normB = 0;

    foreach ($vectorA as $key => $value) {
        if (isset($vectorB[$key])) {
            $dotProduct += $value * $vectorB[$key];
        }
        $normA += $value * $value;
    }

    foreach ($vectorB as $value) {
        $normB += $value * $value;
    }

    if ($normA == 0 || $normB == 0) {
        return 0; // Handle division by zero
    }

    return $dotProduct / (sqrt($normA) * sqrt($normB));
}

function normalizeVector($vector) {
    $norm = sqrt(array_sum(array_map(function ($value) {
        return $value * $value;
    }, $vector)));

    if ($norm == 0) {
        return $vector; // Avoid division by zero
    }

    return array_map(function ($value) use ($norm) {
        return $value / $norm;
    }, $vector);
}

$candidateSkills = [
    "communication" => 0.8,
    "programming" => 0.6,
    "teamwork" => 0.7,
    // ... other skills
];

$jobPostingRequirements = [
    "communication" => 0.9,
    "programming" => 0.5,
    "teamwork" => 0.6,
    // ... other requirements
];

// Normalize the vectors
$candidateSkills = normalizeVector($candidateSkills);
$jobPostingRequirements = normalizeVector($jobPostingRequirements);

$similarity = cosineSimilarity($candidateSkills, $jobPostingRequirements);
echo "Cosine Similarity between Candidate and Job Posting: " . $similarity;

// Sample dataset with candidates and job postings
$candidates = [
    [
        "name" => "Candidate 1",
        "skills" => [
            "communication" => 0.8,
            "programming" => 0.6,
            "teamwork" => 0.7,
            // ... other skills
        ],
    ],
    // ... other candidates
];

$jobPostings = [
    [
        "title" => "Software Developer",
        "requirements" => [
            "communication" => 0.9,
            "programming" => 0.5,
            "teamwork" => 0.6,
            // ... other requirements
        ],
    ],
    // ... other job postings
];

// Calculate and display similarities for all candidates and job postings
foreach ($candidates as $candidate) {
    echo "Candidate: " . $candidate["name"] . "\n";
    foreach ($jobPostings as $jobPosting) {
        $similarity = cosineSimilarity(normalizeVector($candidate["skills"]), normalizeVector($jobPosting["requirements"]));
        echo "Job Posting: " . $jobPosting["title"] . " | Similarity: " . $similarity . "\n";
    }
    echo "\n";
}

class LogisticRegression {
    private $weights;
    private $learningRate;
    
    public function __construct($numFeatures, $learningRate = 0.01) {
        $this->weights = array_fill(0, $numFeatures + 1, 0); // Initialize weights
        $this->learningRate = $learningRate;
    }
    
    private function sigmoid($z) {
        return 1 / (1 + exp(-$z));
    }
    
    public function train($X, $y, $numIterations) {
        $numExamples = count($X);
        
        for ($iteration = 0; $iteration < $numIterations; $iteration++) {
            $gradient = array_fill(0, count($this->weights), 0);
            
            for ($i = 0; $i < $numExamples; $i++) {
                $features = array_merge([1], $X[$i]); // Add bias feature
                $prediction = $this->sigmoid(array_sum(array_map(function ($x, $w) {
                    return $x * $w;
                }, $features, $this->weights)));
                
                $error = $y[$i] - $prediction;
                for ($j = 0; $j < count($gradient); $j++) {
                    $gradient[$j] += $error * $features[$j];
                }
            }
            
            for ($j = 0; $j < count($this->weights); $j++) {
                $this->weights[$j] += $this->learningRate * $gradient[$j] / $numExamples;
            }
        }
    }
    
    public function predict($X) {
        $predictions = [];
        
        foreach ($X as $example) {
            $features = array_merge([1], $example); // Add bias feature
            $prediction = $this->sigmoid(array_sum(array_map(function ($x, $w) {
                return $x * $w;
            }, $features, $this->weights)));
            $predictions[] = $prediction >= 0.5 ? 1 : 0;
        }
        
        return $predictions;
    }
}

// Example usage
$X = [
    [0.7, 0.5],  // Features for job 1
    [0.3, 0.2],  // Features for job 2
    // ... more examples
];

$y = [1, 0];  // Job accuracy labels (1 for accurate, 0 for not accurate)

$logisticRegression = new LogisticRegression(count($X[0]));
$logisticRegression->train($X, $y, $numIterations = 1000);

$newJobs = [
    [0.8, 0.6],  // Features for a new job
    [0.2, 0.1],  // Features for another new job
];

$predictions = $logisticRegression->predict($newJobs);

foreach ($predictions as $prediction) {
    echo "Predicted accuracy: " . ($prediction == 1 ? "Accurate" : "Not Accurate") . "\n";
}



