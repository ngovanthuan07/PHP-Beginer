<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ghép Google Captcha cho Form Send Email PHP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
                font-family: arial;
            }
            .container{
                width: 800px;
                margin: 0 auto;
            }
            #send-email-form label {
                width: 150px;
                display: inline-block;
            }
            #send-email-form input {
                margin-bottom: 10px;
                line-height: 32px;
            }
            #send-email-form textarea {
                width: 500px;
                height: 200px;
            }
            #send-email-form input[type=submit] {
                margin-top: 35px;
                height: 32px;
                margin-left: 150px;
            }
            .g-recaptcha{
                margin-left: 153px;
            }
        </style>
<script src="https://www.google.com/recaptcha/enterprise.js?render=6Lcx-fMgAAAAAPolEl7FSSkMRGnEN61oQmTKdkEy"></script>    </head>
    <body>
        <?php

        use PHPMailer\PHPMailer\PHPMailer;
        use PHPMailer\PHPMailer\Exception;

include './function.php';
        
        // test captcha
        // if (isset($_GET['action']) && $_GET['action'] == "send") {
        //    $url = 'https://www.google.com/recaptcha/api/siteverify';
        //    $secret = '6Lcx-fMgAAAAAPTH_rAkRLZXmk4tYOuv91_jPGF3';
        //    $response = $_POST['token_generate'];
        //    $remoteip = $_SERVER['REMOTE_ADDR'];
        //    $request = file_get_contents($url.'?secret='.$secret.'&response='.$response);
        //    $result = json_decode($request);
        //    echo '<pre>';
        //    var_dump($result->success);
        //    echo '</pre>';
        //    exit;
        // }
   


        if (isset($_GET['action']) && $_GET['action'] == "send") {
            //your site secret key
            $url = 'https://www.google.com/recaptcha/api/siteverify';
            $secret = '6Lcx-fMgAAAAAPTH_rAkRLZXmk4tYOuv91_jPGF3';
            $response = $_POST['token_generate'];
            $remoteip = $_SERVER['REMOTE_ADDR'];
            //get verify response data
            $verifyResponse = file_get_contents($url.'?secret='.$secret.'&response='.$response);
            $responseData = json_decode($verifyResponse);
            if (!$responseData->success) {
                $error = "Bạn chưa xác minh Captcha";
            } elseif (empty($_POST['email'])) { //Kiểm tra xem trường email có rỗng không?
                $error = "Bạn phải nhập địa chỉ email";
            } elseif (!empty($_POST['email']) && !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
                $error = "Bạn phải nhập email đúng định dạng";
            } elseif (empty($_POST['content'])) { //Kiểm tra xem trường content có rỗng không?
                $error = "Bạn phải nhập nội dung";
            } elseif (isset($_FILES['file_upload'])) {
                $uploadedFiles = $_FILES['file_upload'];
                $result = uploadFiles($uploadedFiles);
                if (!empty($result['errors'])) {
                    $error = $result['errors'];
                } else {
                    $uploadedFiles = $result['uploaded_files'];
                }
            }
            if (!isset($error)) {
                include 'library.php'; // include the library file
                require 'vendor/autoload.php';
                $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
                try {
                    //Server settings
                    $mail->CharSet = "UTF-8";
                    $mail->SMTPDebug = 0;                                 // Enable verbose debug output
                    $mail->isSMTP();                                      // Set mailer to use SMTP
                    $mail->Host = SMTP_HOST;  // Specify main and backup SMTP servers
                    $mail->SMTPAuth = true;                               // Enable SMTP authentication
                    $mail->Username = SMTP_UNAME;                 // SMTP username
                    $mail->Password = SMTP_PWORD;                           // SMTP password
                    $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
                    $mail->Port = SMTP_PORT;                                    // TCP port to connect to
                    //Recipients
                    $mail->setFrom(SMTP_UNAME, "Tên người gửi");
                    $mail->addAddress($_POST['email'], 'Tên người nhận');     // Add a recipient | name is option
                    $mail->addReplyTo(SMTP_UNAME, 'Tên người trả lời');
//                    $mail->addCC('CCemail@gmail.com');
//                    $mail->addBCC('BCCemail@gmail.com');
//                    Attachments
                    if (!empty($uploadedFiles)) {
                        foreach ($uploadedFiles as $file) {
                            $mail->addAttachment(realpath('.') . $file);
                        }
                    }
                    $mail->isHTML(true);                                  // Set email format to HTML
                    $mail->Subject = $_POST['title'];
                    $mail->Body = $_POST['content'];
                    $mail->AltBody = $_POST['content']; //None HTML
                    $result = $mail->send();
                    if (!$result) {
                        $error = "Có lỗi xảy ra trong quá trình gửi mail";
                    }
                } catch (Exception $e) {
                    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
                }
            }
            ?>
            <div class = "container">
                <div class = "error"><?= isset($error) ? $error : "Gửi email thành công" ?></div>
                <a href = "index.php">Quay lại form gửi mail</a>
            </div>
        <?php } else {
            ?>
            <div class="container">
                <h1>Send Email Form</h1>
                <form id="send-email-form" class="demo-form" method="POST" action="?action=send" enctype="multipart/form-data">
                    <label>Gửi đến email: </label>
                    <input type="text" name="email" value="" /><br/>
                    <label>Tiêu đề: </label>
                    <input type="text" name="title" value="" /><br/>
                    <label>File: </label>
                    <input multiple type="file" name="file_upload[]" /><br/>
                    <br/>
                    <label>Nội dung: </label>
                    <textarea name="content"></textarea><br/>

                    <input type="hidden" name="token_generate" id="token_generate">
                    <input type="submit" value="Send Email" />
                </form>
            </div>
<?php } ?>
    </body>
    <script>
    grecaptcha.enterprise.ready(function() {
    grecaptcha.enterprise.execute('6Lcx-fMgAAAAAPolEl7FSSkMRGnEN61oQmTKdkEy', {action: 'submit'}).then(function(token) {
        var response = document.getElementById('token_generate');
        response.value = token;
    });
});
  </script>
 </script>
</html>
