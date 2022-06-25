<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

$new_password = md5($_POST['password']);

    try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
    $stmt = $conn->prepare("UPDATE tbl_users SET login = :newpassword WHERE member_no='$myid'");
    $stmt->bindParam(':newpassword', $new_password);
    $stmt->execute();
	header("location:../change-password.php?r=9564");	  
	}catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }

?>