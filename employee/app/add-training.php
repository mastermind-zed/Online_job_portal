<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$training = ucwords($_POST['training']);
$institution = ucwords($_POST['institution']);
$timeframe = ucwords($_POST['timeframe']);
$certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));

if ($certificate == "") {
	
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("INSERT INTO tbl_training (member_no, training, institution, timeframe) VALUES (:member, :training, :institution, :timeframe)");
$stmt->bindParam(':member', $myid);
$stmt->bindParam(':training', $training);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->execute();
header("location:../training.php?r=1964");					  
}catch(PDOException $e)
{

}
	

}else{

if ($_FILES["certificate"]["size"] > 1000000) {
header("location:../training.php?r=2290");
}else{
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("INSERT INTO tbl_training (member_no, training, institution, timeframe, certificate) VALUES (:member, :training, :institution, :timeframe, '$certificate')");
$stmt->bindParam(':member', $myid);
$stmt->bindParam(':training', $training);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->execute();
header("location:../training.php?r=1964");					  
}catch(PDOException $e)
{

}
	
}

	
}
	
?>