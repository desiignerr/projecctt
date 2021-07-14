<?php
session_start();
require 'system/autoload.php';
if($_SERVER['REQUEST_METHOD'] =='POST'){
    $admin = new \Controllers\AccountController();
    if($admin->verifyAccount()){
        $_SESSION['admin'] = 'loggedIn';
    }else{
        $error = 'Error';
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="dist/css/font-awesome.min.css">
</head>
<body>
<?php if(isset($_SESSION['admin'])):  ?>
<div id="admin">

</div>
<?php else:;?>
<nav class=" deep-orange accent-3">
    <div class="nav-wrapper container ">
        <a href="#" class="brand-logo">GTBank</a>
    </div>
</nav>
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col offset-m3 m6">
                <div class="card-panel">
                    <h5>Admin Login</h5>
                    <?php if(isset($error)):?>
                        <p class="red-text">Invalid Username or password</p>
        <?php endif;?>
                    <form method="post" action="admin.php">
                        <div class="input-field">
                            <input type="text" id="username" name="username" class="validate" required/>
                            <label for="username">Username</label>
                        </div>
                        <div class="input-field">
                            <input type="password" id="password" name="password" class="validate" required/>
                            <label for="password">Password</label>
                        </div>
                        <div class="button">
                            <button class="btn btn-large">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endif ?>
<script type="text/javascript" src="dist/js/admin.bundle.js"></script>
</body>
</html>