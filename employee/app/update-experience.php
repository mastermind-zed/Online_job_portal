<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$institution = ucwords($_POST['institution']);

if (isset($_POST['supervisor'])) {
$supervisor = ucwords($_POST['supervisor']);	
}else{
$supervisor = "";	
}

if (isset($_POST['telphone'])) {
$telphone = $_POST['telphone'];	
}else{
$telphone = "";	
}

$jobtitle = ucwords($_POST['jobtitle']);
$startdate = ucwords($_POST['startdate']);
$enddate = ucwords($_POST['enddate']);

if (isset($_POST['duties'])) {
$duties = $_POST['duties'];	
}else{
$duties = "";	
}

$expid = $_POST['expid'];

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("UPDATE tbl_experience SET title=:title, institution=:institution, supervisor = :supervisor, supervisor_phone = :telphone, start_date =  :startdate, end_date = :enddate WHERE id=:expid AND member_no = '$myid'");
$stmt->bindParam(':title', $jobtitle);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':supervisor', $supervisor);
$stmt->bindParam(':telphone', $telphone);
$stmt->bindParam(':startdate', $startdate);
$stmt->bindParam(':enddate', $enddate);
$stmt->bindParam(':expid', $expid);

$stmt->execute();
header("location:../experience.php?r=9215");					  
}catch(PDOException $e)
{

}


?>