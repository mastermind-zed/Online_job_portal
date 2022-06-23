<?php
include '../constants/settings.php';

$myfname = ucwords($_POST['fullname']);
$myemail = $_POST['email'];
$mymessage = $_POST['message'];

require '../mail/PHPMailerAutoload.php';

$mail = new PHPMailer;


$mail->isSMTP();                                      
$mail->Host = $smtp_host;
$mail->SMTPAuth = true;                           
$mail->Username = $smtp_user;               
$mail->Password = $smtp_pass;                       
$mail->SMTPSecure = 'tls';                   
$mail->Port = 587;   

$mail->setFrom($myemail, $myfname);
$mail->addAddress($contact_mail);           
  
$mail->isHTML(true);

$mail->Subject = 'Contact';
$mail->Body    = $mymessage;
$mail->AltBody = $mymessage;

if(!$mail->send()) {
header("location:../contact.php?r=2974");
} else {
header("location:../contact.php?r=5634");
}

?>