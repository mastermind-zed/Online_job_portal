<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';
$id = $_POST['courseid'];
$country  = $_POST['country'];
$course = ucwords($_POST['course']);
$institution = ucwords($_POST['institution']);
$timeframe = ucwords($_POST['timeframe']);
$certificate = addslashes(file_get_contents($_FILES['certificate']['tmp_name']));
$transcript = addslashes(file_get_contents($_FILES['transcript']['tmp_name']));
$level  = $_POST['level'];

if ($certificate == "" and $transcript == ""){
 try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("UPDATE tbl_academic_qualification SET country = :country, institution = :institution, course = :course, level = :level, timeframe = :timeframe WHERE id= :aid AND member_no = '$myid'");
$stmt->bindParam(':country', $country);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':course', $course);
$stmt->bindParam(':level', $level);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->bindParam(':aid', $id);
$stmt->execute();
 header("location:../academic.php?r=3214");					  
}catch(PDOException $e)
{

}


}


if ($certificate !== "" and $transcript == "") {
	
if ($_FILES["certificate"]["size"] > 1000000) {
header("location:../academic.php?r=2290");
}else{

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("UPDATE tbl_academic_qualification SET country = :country, institution = :institution, course = :course, level = :level, timeframe = :timeframe, certificate = '$certificate'  WHERE id= :aid AND member_no = '$myid'");
$stmt->bindParam(':country', $country);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':course', $course);
$stmt->bindParam(':level', $level);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->bindParam(':aid', $id);
$stmt->execute();
header("location:../academic.php?r=3214");					  
}catch(PDOException $e)
{

}

}	

}

if ($transcript !== "" and $certificate == "") {
if ($_FILES["transcript"]["size"] > 1000000) {
header("location:../academic.php?r=2490");
}else{
	
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("UPDATE tbl_academic_qualification SET country = :country, institution = :institution, course = :course, level = :level, timeframe = :timeframe, transcript = '$transcript' WHERE id= :aid AND member_no = '$myid'");
$stmt->bindParam(':country', $country);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':course', $course);
$stmt->bindParam(':level', $level);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->bindParam(':aid', $id);
$stmt->execute();
header("location:../academic.php?r=3214");					  
}catch(PDOException $e)
{

}

	
}

}

if ($transcript !== "" and $certificate !== "") {

if ($_FILES["certificate"]["size"] > 1000000) {
header("location:../academic.php?r=2290");
}else{
if ($_FILES["transcript"]["size"] > 1000000) {
header("location:../academic.php?r=2490");
}else{

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("UPDATE tbl_academic_qualification SET country = :country, institution = :institution, course = :course, level = :level, timeframe = :timeframe, certificate = '$certificate', transcript = '$transcript'  WHERE id= :aid AND member_no = '$myid'");
$stmt->bindParam(':country', $country);
$stmt->bindParam(':institution', $institution);
$stmt->bindParam(':course', $course);
$stmt->bindParam(':level', $level);
$stmt->bindParam(':timeframe', $timeframe);
$stmt->bindParam(':aid', $id);
$stmt->execute();
header("location:../academic.php?r=3214");					  
}catch(PDOException $e)
{

}

}


}

}
?>