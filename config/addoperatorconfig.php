<?php

require_once('connect.php');
$_SERVER['REQUEST_METHOD']='POST';

if($_SERVER['REQUEST_METHOD']=='POST'){
    $userInput= $_POST['opname'];
      
    if($con){
        $query = "SELECT * FROM operatorlist WHERE operator_name  = '$userInput'";
        $result = mysqli_query($con ,$query); 
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
        $count = mysqli_num_rows($result);

        if($count==0){
            $sql="insert into operatorlist (operator_name) values ('$userInput')";
            $result=mysqli_query($con,$sql);
        
            if($result){
                echo '<script>
                    alert("New operator added successfully");
                    window.location.href = "/tickets-system-only-html-and-css-main/operator.php";
                    alert("New account created successfully");
                </script>';
            }
            else{
                echo '<script>
                    alert("An error occurred");
                    window.location.href = "/tickets-system-only-html-and-css-main/operator.php";
                </script>';

            }
        }
        else{
            echo '<script>
                alert("This operator already exists.");
                window.location.href = "/tickets-system-only-html-and-css-main/operator.php";
            </script>';

        }
    }
    else{
        die(mysqli_error($con));
    }
}
?>