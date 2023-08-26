<?php 
session_start();

include_once 'inc/function.find_date.php';
include_once 'inc/docx.php';
include_once 'inc/PdfParser.php';
// include_once 'inc/PdfParser/Parser.php';
include_once 'inc/class.php';
$functions = new functions();

// Parse JSON data
if (session_status() != PHP_SESSION_ACTIVE) {
    session_start();
}

?>
<html>

<head>

    <meta http-equiv="Content-type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="google-site-verification" content="snA7C_3rIRtbTcg4ylbz0rNW84SKiKp-ykZbKoUq-jU">

    <title>
        AutoApply
    </title>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/price_rangs.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">

    <script src="assets/js/jquery.min.js" type="application/javascript"></script>
    <script src="assets/js/jquery-ui.min.js" type="application/javascript"></script>
    <link href="assets/css/bootstrap1.min.css" rel="stylesheet" type="text/css">
    <script src="assets/js/bootstrap1.min.js" type="application/javascript"></script>

    <link href="assets/css/jquery-ui.theme.min.css" rel="stylesheet" type="text/css">
    <script src="assets/js/jquery.signature.js" type="application/javascript"></script>
    <link href="assets/css/jquery.signature.css" rel="stylesheet" type="text/css">
    <script src="assets/js/jquery.ui.touch-punch.min.js" type="application/javascript"></script>

    <link href="assets/css/site.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function signaturejsLoad() {
            jQuery('#defaultSignature').signature({ syncField: '#signatureJSON' });
            jQuery('#clearSignatureButton').click(function () {
                jQuery('#defaultSignature').signature('clear');
            });
        }
        function submit() {

            register();
            return true;
        }
        $('.my-form').on('submit', function () {
            alert('Form submitted!');
            return false;
        });
    </script>
    
    <?php include_once 'inc/head.php'; ?>
</head>

<body style="background: white;">
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/auto-apply.jpeg" alt="" style="width: 215px;">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header style="background-color: white;">
        <!-- Header Start -->
        <div class="header-area header-transparrent">
            <div class="headder-top header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-2">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="index.php"><img src="assets/img/logo/auto-apply.jpeg" alt=""
                                        style="width: 215px;"></a>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-9">
                            <div class="menu-wrapper">
                                <!-- Main-menu -->
                                <div class="main-menu">
                                    <nav class="d-none d-lg-block">
                                        <ul id="navigation">
                                            <li><a href="#" onclick="navToJobDetails('index.php')">Home</a></li>
                                            <li><a href="#" onclick="navToJobDetails('job_listing.html')">Find a Jobs </a></li>
                                            <li><a href="#" onclick="navToJobDetails('about.html')">About</a></li>
                                            <!-- <li><a href="#">Page</a>
                                                <ul class="submenu">
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="single-blog.html">Blog Details</a></li>
                                                    <li><a href="elements.html">Elements</a></li>
                                                    <li><a href="job_details.html">job Details</a></li>
                                                </ul>
                                            </li>-->
                                            <li><a href="#" onclick="navToJobDetails('contact.html')" >Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>          
                                <!-- Header-btn -->
                                <div class="header-btn f-right" id="notlogged" style="display: block;">
                                    <a href="resume.php" class="btn head-btn1">Register</a>
                                </div>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center"
            style="background-color: beige !important;">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Login</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="margin: auto;max-width: 715px;padding: 5px;background: white;">
        <br>
        <form action="inc/do.php" id="LoginCheck<?php echo $key ?>" name="LoginCheck<?php echo $key ?>" method="post">

            <div style="max-width: 400px;">
            </div>
            <div  class="form-group" style="padding-bottom: 18px;">Email<span style="color: red;"> *</span><br>
                <input type="text" id="email" name="email" style="max-width: 450px;" class="form-control"
                    fdprocessedid="2nnnzx">
            </div>
            <div  class="form-group" style="padding-bottom: 18px;">Password<span style="color: red;"> *</span><br>
                <input type="password" id="password" name="password" style="max-width : 450px;" class="form-control"
                    fdprocessedid="mn04lg">
            </div>

            <div style="padding-bottom: 18px;"><input name="skip_Submit" value="Submit" type="submit"
                    fdprocessedid="g67qsn"></div>
        </form>

        <script type="text/javascript">
            function validateForm() {
                $(".has-error").removeClass("has-error");
                if (isEmpty(document.getElementById('data_3').value.trim())) {
                    alert('First name is required!');
                    document.getElementById('data_3').parentNode.className += " has-error";
                    return false;
                }
                if (isEmpty(document.getElementById('data_4').value.trim())) {
                    alert('Last name is required!');
                    document.getElementById('data_4').parentNode.className += " has-error";
                    return false;
                }
                if (isEmpty(document.getElementById('data_5').value.trim())) {
                    alert('Email is required!');
                    document.getElementById('data_5').parentNode.className += " has-error";
                    return false;
                }
                if (!validateEmail(document.getElementById('data_5').value.trim())) {
                    alert('Email must be a valid email address!');
                    document.getElementById('data_5').parentNode.className += " has-error";
                    return false;
                }
                if (isEmpty(document.getElementById('data_6').value.trim())) {
                    alert('Phone is required!');
                    document.getElementById('data_6').parentNode.className += " has-error";
                    return false;
                }
                if (isEmpty(document.getElementById('data_9').value.trim())) {
                    alert('Position you are applying for is required!');
                    document.getElementById('data_9').parentNode.className += " has-error";
                    return false;
                }
                return true;
            }
            function isEmpty(str) { return (str.length === 0 || !str.trim()); }
            function validateEmail(email) {
                var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,15}(?:\.[a-z]{2})?)$/i;
                return isEmpty(email) || re.test(email);
            }
        </script>


    </div>
    <div class="pika-single is-hidden is-bound" style="position: static; left: auto; top: auto;"></div>
    <script src="assets/js/jobscript.js" type="application/javascript"></script>
    <!-- All JS Custom Plugins Link Here here -->
    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <script src="./assets/js/price_rangs.js"></script>

    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>

    <!-- Scrollup, nice-select, sticky -->
    <script src="./assets/js/jquery.scrollUp.min.js"></script>
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- Jquery Plugins, main Jquery -->
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
    <script src="./assets/js/jobscript.js"></script>
    <script src="./assets/js/autoapply.js"></script>

    <?php include_once 'inc/foot.php'; ?>




</body>

</html>