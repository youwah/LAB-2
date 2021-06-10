<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '/home8/crimsonw/public_html/s272043/storehelper/php/PHPMailer/src/Exception.php';
require '/home8/crimsonw/public_html/s272043/storehelper/php/PHPMailer/src/PHPMailer.php';
require '/home8/crimsonw/public_html/s272043/storehelper/php/PHPMailer/src/SMTP.php';

include_once("dbconnect.php");

$user_email= $_POST['email'];
$password = $_POST['password'];
$passha1 = sha1($password);
$otp = rand(1000,9999);

$sqlregister = "INSERT INTO tbl_user(user_email,password,otp) VALUE('$user_email','$passha1','$otp')";
if ($conn->query($sqlregister) === TRUE){
    echo "sucess";
    sendEmail($otp,$user_email);
    }else{
    echo "failed";
    }
    
function sendEmail($otp,$user_email){
    $mail = new PHPMailer(true);
    $mail->SMTPDebug = 0;                                       //Disable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'mail.crimsonwebs.com';                 //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'storehelper@crimsonwebs.com';            //SMTP username
    $mail->Password   = 'Qvj*y88VyBo#';                         //SMTP password
    $mail->SMTPSecure = 'tls';         
    $mail->Port       = 587;
    
    $from = "storehelper@crimsonwebs.com";
    $to = $user_email;
    $subject = "From storehelper. Please Verify Your Account";
    $message = "<p>Click the following link to verify your account<br><br>
    <a href='https://crimsonwebs.com/s272043/storehelper/php/verify_account.php?email=".$user_email."&key=".$otp."'>Click Here to verify your account</a>";
    
    $mail->setFrom($from,"storehelper");
    $mail->addAddress($to);  
    
    $mail->isHTML(true);                    //Set email format to HTML
    $mail->Subject = $subject;
    $mail->Body    = $message;
    $mail->send();
    
}
?>


