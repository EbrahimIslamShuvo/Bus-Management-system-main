<?php

require_once('connect.php');
$_SERVER['REQUEST_METHOD']='POST';

if($_SERVER['REQUEST_METHOD']=='POST'){
    $username= $_POST['Username'];
    $email= $_POST['email'];
    $password= $_POST['password'];
    $user_type="customer";
      
    if($con){
        $query = "SELECT * FROM users WHERE user_email = '$email'";
        $result = mysqli_query($con ,$query); 
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
        $count = mysqli_num_rows($result);

        if($count==0){
            $sql="insert into users (user_name,user_email,user_password,user_type) values ('$username','$email','$password','$user_type')";
            $result=mysqli_query($con,$sql);
        
            if($result){
                echo '<script>
                    alert("New account created successfully");
                    window.location.href = "/tickets-system-only-html-and-css-main/loginticket.php";
                </script>';

            }
            else{
                echo '<script>
                    alert("An error accour");
                    window.location.href = "\tickets-system-only-html-and-css-main\loginticket.php";
                </script>';
            }
        }
        else{
            echo '<script>
                alert("You already have an account using this email.");
                window.location.href = "/tickets-system-only-html-and-css-main/loginticket.php";
            </script>';

        }
    }
    else{
        die(mysqli_error($con));
    }
}
?>