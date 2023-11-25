<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Welcome | JohnTravelsLK</title>
   <link rel="stylesheet" href="css/login-style.css">
  <style>
  
  </style>
</head>
<body>
  <div class="travel">
         <div class="form-box">
             <div class="button-box">
                 <div id="btn"></div>
                     <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                     <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>
         
         <div class="icon">
            <img src="icons/AA.png">
            <img src="icons/BB.png">
            <img src="icons/CC.png"><br><br>
         
         </div>
 

<form id="login" class="input-group" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
      <input type="text" class="input-feild" placeholder="User Name" name="username" required>
      <input type="password" class="input-feild" placeholder="Password" name="password" required><br><br><br>
      <button type="submit" class="submit-btn" name="login">Log In</button>
      <button type="button" class="toggle-btn forgot-password" onclick="forgotPassword()">Forgot Password</button>
     
</form>
<form id="register" class="input-group" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
     
      <input type="text" class="input-feild" placeholder="User Name" name="username" required>
      <input type="password" class="input-feild" placeholder="Password" name="password" required>
      <input type="text" class="input-feild" placeholder="Contact Number" name="contact_number" required>
      <input type="email" class="input-feild" placeholder="Email" name="email" required>
      <input type="checkbox" class="check-box" ><span> I agree to the terms & conditions</span><br><br>
      <button type="submit" class="submit-btn" name="register">Register</button>
     
</form>
<script>
     var x = document.getElementById("login");
     var y = document.getElementById("register");
     var z = document.getElementById("btn");
     
     function register(){
       x.style.left="-400px";
       y.style.left="50px";
       z.style.left="110px";
       }
     function login(){
       x.style.left="50px";
       y.style.left="450px";
       z.style.left="0px";
       }

       function forgotPassword() {
    window.location.href = "admin/reset_password.php";
}
</script>
</div>
</div>


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

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["login"])) {
    $username = test_input($_POST["username"]);
    $password = test_input($_POST["password"]);

    $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        header("Location: login_sucess.php");
        exit();
    } else {
        echo "Invalid username or password";
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["register"])) {
    
    $username = test_input($_POST["username"]);
    $password = test_input($_POST["password"]);
    $contact_number = test_input($_POST["contact_number"]);
    $email = test_input($_POST["email"]);
    

    $sql = "INSERT INTO users ( username, password, contact_number, email)
        VALUES ('$username', '$password', '$contact_number', '$email')";


    if ($conn->query($sql) === TRUE) {
        header("Location: register_sucess.php");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
