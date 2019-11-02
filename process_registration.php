<?php
    session_start();
    include('config.php');
    extract($_POST);
    $errors = array(); 
    $user_check_query = "SELECT * FROM user WHERE username='$username' LIMIT 1";
    $result = mysqli_query($con, $user_check_query);
    $user = mysqli_fetch_assoc($result);
  
if ($user) { // if user exists
    if ($user['username'] === $username) {
      array_push($errors, "Username already exists");
    }
    if ($user['email'] === $email) {
      array_push($errors, "email already exists");
    }
  }
  if (count($errors) == 0) {
    $sql = "INSERT INTO `user` (`username`, `name`, `password`, `email`, `phone_no`) VALUES('$username','$name','$password','$email','$phone_no')";
    mysqli_query($con, $sql);
    // $id=mysqli_insert_id($con);
    $_SESSION['user']=$username;
    header('location:index.php');
}  else{
    echo $errors[0];
} 
?>
