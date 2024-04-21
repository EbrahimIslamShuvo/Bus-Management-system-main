<?php
    require_once("config\connect.php");
$sql = "SELECT * FROM contractus";
$result = $con->query($sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Operator List</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/useradmin.css">
  
</head>
<body>
  <div class="header">
  <div class="sidebar">
            <div class="user">
                <img src="https://i.ibb.co/JkCMRkq/avatar-people-person-profile-user-women-icon-icon-search-engine-23.png" class="userpic">
                <div>
                    <h2>Admin</h2>
                    <p>Administration@gmail.com</p>
                </div>
            </div>
            <ul>
                <li><img src="https://i.ibb.co/xjc8mSN/dashboard.png"><p><a href="mainadmindash.php">Dashboard</a></p></li>
                <li><img src="https://i.ibb.co/5x6gHXf/operator-icon-14.png"><p><a href="operator.php">Operator</a></p></li>
                <li><img src="https://i.ibb.co/X7hhwzy/customers-icon-29.png"><p><a href="customerfmain.php">Customer</a></p></li>
                <li><img src="https://i.ibb.co/Dz5S4C6/admit-one-ticket-icon-black-and-white-isolated-wite-free-vector.jpg"><p><a href="operator.php">Tickets</a></p></li>
                <li><img src="https://i.ibb.co/Xx9XbLV/help-desk-computer-icons-icon-design-technical-support-png-favpng-ZFKe-CZq-Pe-K0-Vnj-E5y-Nddw-FUb-X.jpg"><p><a href="customertext.php">Customers Text</a></p></li>
                
            </ul>
            <ul>
                <li><img src="https://i.ibb.co/YtX4sSw/logout.png"><p>Log Out</p></li>
            </ul>
        </div>

    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card mt-5">
                    <div class="card-header">
                        <h2 class="display-6 text-center">Customer Text</h2>
                    </div>
                    <div class="card-body">
                        <a href="addnewoperator.php" class="btn btn-primary" style="background-color: blue; margin-bottom: 5px; margin-left: 5px;">Add Operator</a>
                        <table class="table text-center">
                            <thead>
                                <tr>
                                    <th style="width: auto;">ID</th>
                                    <th style="width: auto;">First Name</th>
                                    <th style="width: auto;">last Name</th>
                                    <th style="width: auto;">Email Name</th>
                                    <th style="width: auto;">Phone Name</th>
                                    <th style="width: auto;">Text</th>
                                    <th style="width: 300px;"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    while($row = mysqli_fetch_array($result)){
                                    ?>
                                    <tr style="border-bottom: 25px solid transparent;">
                                        <td><?php echo $row['id']?></td>
                                        <td><?php echo $row['FirstName']?></td>
                                        <td><?php echo $row['LastName']?></td>
                                        <td><?php echo $row['Email']?></td>
                                        <td><?php echo $row['Mobile']?></td>
                                        <td><?php echo $row['Message']?></td>
                                        <td>
                                            <a href="#" class="btn btn-primary" style="background-color: blue">Reply</a>
                                            <a href="#" class="btn btn-primary" style="background-color: red;">Delete</a>

                                        </td>
                                    </tr>
                                    <?php
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
</body>
</html>
