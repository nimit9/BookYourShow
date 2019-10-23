<?php
session_start();
include('config.php');
extract($_POST);
echo $username,$name,$email,$password,$phone_no;
$sql = "INSERT INTO `user` (`username`, `name`, `password`, `email`, `phone_no`) VALUES('$username','$name',$password','$email','$phone_no')";
mysqli_query($con, $sql);
$id=mysqli_insert_id($con);
$_SESSION['user']=$id;
?>