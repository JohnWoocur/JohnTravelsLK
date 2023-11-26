<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset | JohnTravelsLK</title>
    <link rel="stylesheet" href="../css/login-style.css">
    <style>
        
    </style>
</head>
<body>
<div class="travel">
    <div class="form-box" style = "height:330px;">
        <div class="button-box"></div>
        <div class="icon">
            <img src="../icons/AA.png">
            <img src="../icons/BB.png">
            <img src="../icons/CC.png"><br><br>
        </div>
        <form id="passwordResetForm" class="input-group" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <h2>Password Reset</h2>
            <input type="email" class="input-feild" placeholder="Email Address" name="reset_email" required>          
            <br><br>
            <button type="submit" class="submit-btn" name="reset_password">Send Password Reset Link</button>
            <button type="button" class="toggle-btn forgot-password" onclick="forgotPassword()">Back to Login</button>
        </form>
    </div>
</div>
<script>
    function forgotPassword() {
window.location.href = "../index.php";
}
</script>
</body>
</html>

<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "travel_agency";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
?>
