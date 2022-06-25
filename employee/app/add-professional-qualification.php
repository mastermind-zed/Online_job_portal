<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$country  = $_POST['country'];
$course = ucwords($_POST['course']);
$institution = ucwords($_POST['institution']);
$timeframe = ucwords($_POST['timeframe']);
$certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));

if ($_FILES["certificate"]["size"] > 1000000) {
header("location:../qualifications.php?r=2290");
}else{
	
    try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
    $stmt = $conn->prepare("INSERT INTO tbl_professional_qualification (member_no, country, institution, title, timeframe, certificate) VALUES (:memberno, :country, :institution, :title, :timeframe, '$certificate')");
    $stmt->bindParam(':memberno', $myid);
    $stmt->bindParam(':country', $country);
    $stmt->bindParam(':institution', $institution);
	$stmt->bindParam(':title', $course);
	$stmt->bindParam(':timeframe', $timeframe);
    $stmt->execute();
	header("location:../qualifications.php?r=2305");
					  
	}catch(PDOException $e)
    {
  
    }
	
	

}


?>