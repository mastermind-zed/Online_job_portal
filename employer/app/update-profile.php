<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

$companame = ucwords($_POST['company']);
$esta = $_POST['year'];
$type = ucwords($_POST['type']);
$people = $_POST['people'];
$web = $_POST['web'];
$city = ucwords($_POST['city']);
$street = ucwords($_POST['street']);
$zip = ucwords($_POST['zip']);
$phone = $_POST['phone'];
$country = $_POST['country'];
$about = $_POST['background'];
$service = $_POST['services'];
$expertise = $_POST['expertise'];
$myemail = $_POST['email'];

    try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
    $stmt = $conn->prepare("SELECT * FROM tbl_users WHERE email = :email AND member_no != '$myid'");
	$stmt->bindParam(':email', $myemail);
    $stmt->execute();
    $result = $stmt->fetchAll();
    $rec = count($result);
	
	if ($rec == "0") {
    $stmt = $conn->prepare("UPDATE tbl_users SET first_name = :compname, byear = :esta, title = :type, city = :city, street = :street, zip = :zip, country = :country, phone = :phone, about = :about, services = :service, expertise = :expertise, people = :people, website = :website WHERE member_no='$myid'");
    $stmt->bindParam(':compname', $companame);
    $stmt->bindParam(':esta', $esta);
	$stmt->bindParam(':type', $type);
    $stmt->bindParam(':city', $city);
	$stmt->bindParam(':street', $street);
    $stmt->bindParam(':zip', $zip);
	$stmt->bindParam(':country', $country);
    $stmt->bindParam(':phone', $phone);
	$stmt->bindParam(':about', $about);
    $stmt->bindParam(':service', $service);
	$stmt->bindParam(':expertise', $expertise);
    $stmt->bindParam(':people', $people);
	$stmt->bindParam(':website', $web);
    $stmt->execute();
	
	$_SESSION['compname'] = $companame;
	$_SESSION['established'] = $esta;
    $_SESSION['myemail'] = $myemail;
    $_SESSION['myphone'] = $phone;
	$_SESSION['comptype'] = $type;
	$_SESSION['mycity'] = $city;
	$_SESSION['mystreet'] = $street;
	$_SESSION['myzip'] = $zip;
    $_SESSION['mycountry'] = $country;
    $_SESSION['mydesc'] = $about;
	$_SESSION['myserv'] = $service;
	$_SESSION['myexp'] = $expertise;
	$_SESSION['website'] = $web;
	$_SESSION['people'] = $people;
	header("location:../?r=9837");	
	}else{
	header("location:../?r=0927");
	}

					  
	}catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }

?>


