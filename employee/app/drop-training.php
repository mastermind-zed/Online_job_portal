<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$train_id = $_GET['id'];

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("DELETE FROM tbl_training WHERE id=:trainid AND member_no = '$myid'");
$stmt->bindParam(':trainid', $train_id);
$stmt->execute();
header("location:../training.php?r=9522");					  
}catch(PDOException $e)
{

}

?>

