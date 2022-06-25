<?php
session_start();
if (isset($_SESSION['logged']) && $_SESSION['logged'] == true) {
$myid = $_SESSION['myid'];
$myfname = $_SESSION['myfname'];
$mylname = $_SESSION['mylname'];
$mygender = $_SESSION['gender'];
$myemail = $_SESSION['myemail'];
$mydate = $_SESSION['mydate'];
$mymonth = $_SESSION['mymonth'];
$myyear = $_SESSION['myyear'];
$myphone = $_SESSION['myphone'];
$myedu = $_SESSION['myedu'];
$mytitle = $_SESSION['mytitle'];
$mycity = $_SESSION['mycity'];
$mystreet = $_SESSION['mystreet'];
$myzip = $_SESSION['myzip'];
$mycountry = $_SESSION['mycountry'];
$mydesc = $_SESSION['mydesc'];
$myavatar = $_SESSION['avatar'];
$mylogin = $_SESSION['lastlogin'];
$myrole = $_SESSION['role'];
	
$user_online = true;	
$myavatar = $_SESSION['avatar'];
}else{
$user_online = false;
}
?>