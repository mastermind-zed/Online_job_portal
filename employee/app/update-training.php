<?php
include '../../constants/db_config.php';
include '../constants/check-login.php';
$training = ucwords($_POST['training']);
$institution = ucwords($_POST['institution']);
$timeframe = ucwords($_POST['timeframe']);
$certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));
$training_id = $_POST['trainingid'];

if ($certificate == "") {

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("UPDATE tbl_training SET training = :training, institution = :institution, timeframe = :timeframe WHERE id= :trainid AND member_no = '$myid'");
$stmt->bindParam(':training', $training);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->bindParam(':trainid', $training_id);
$stmt->execute();
header("location:../training.php?r=5790");
					  
}catch(PDOException $e)
{
echo "Connection failed: " . $e->getMessage();
}

}else{

if ($_FILES["certificate"]["size"] > 1000000) {
header("location:../training.php?r=2290");
}else{
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("UPDATE tbl_training SET training = :training, institution = :institution, timeframe = :timeframe, certificate = '$certificate' WHERE id= :trainid AND member_no = '$myid'");
$stmt->bindParam(':training', $training);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->bindParam(':trainid', $training_id);
$stmt->execute();
header("location:../training.php?r=5790");
					  
}catch(PDOException $e)
{

}	
}

	
}
	
?>