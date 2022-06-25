<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$country  = $_POST['country'];
$course = ucwords($_POST['course']);
$institution = ucwords($_POST['institution']);
$timeframe = ucwords($_POST['timeframe']);
$certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));
$transcript = addslashes(file_get_contents($_FILES['transcript']['tmp_name']));
$level  = $_POST['level'];

if ($_FILES["certificate"]["size"] > 1000000) {
header("location:../academic.php?r=2290");
}else{
if ($_FILES["transcript"]["size"] > 1000000) {
header("location:../academic.php?r=2490");
}else{
	
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("INSERT INTO tbl_academic_qualification (member_no, country, institution, course, level, timeframe, certificate, transcript) VALUES 
(:member, :country, :institution, :course, :level, :timeframe, '$certificate', '$transcript')");
$stmt->bindParam(':member', $myid);
$stmt->bindParam(':country', $country);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':course', $course);
$stmt->bindParam(':level', $level);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->execute();
header("location:../academic.php?r=2303");					  
}catch(PDOException $e)
{

}

}

}
	


?>