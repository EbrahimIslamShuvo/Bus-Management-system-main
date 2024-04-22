<?php
require_once ("config\connect.php");

if (isset($_GET['email'])) {
    $email = $_GET['email'];
    // Fetch user information
    $user_query = "SELECT * FROM users WHERE user_email ='$email'";
    $user_result = mysqli_query($con, $user_query);
    $user_row = mysqli_fetch_array($user_result);

    $sql = "SELECT * FROM users";
    $result = mysqli_query($con, $sql);
}

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
                <img src="https://i.ibb.co/JkCMRkq/avatar-people-person-profile-user-women-icon-icon-search-engine-23.png"
                    class="userpic">
                <div>
                    <h2><?php echo $user_row['user_name']; ?></h2>
                    <p><?php echo $user_row['user_email']; ?></p>
                </div>
            </div>
            <ul>
                <li><img src="https://i.ibb.co/xjc8mSN/dashboard.png">
                    <p><a href="mainadmindash.php?email=<?php echo $email; ?>">Dashboard</a></p>
                </li>
                <li><img src="https://i.ibb.co/5x6gHXf/operator-icon-14.png">
                    <p><a href="operator.php?email=<?php echo $email; ?>">Operator</a></p>
                </li>
                <li><img src="https://i.ibb.co/X7hhwzy/customers-icon-29.png">
                    <p><a href="customerfmain.php?email=<?php echo $email; ?>">Customer</a></p>
                </li>
                <li><img
                        src="https://i.ibb.co/Dz5S4C6/admit-one-ticket-icon-black-and-white-isolated-wite-free-vector.jpg">
                    <p><a href="operator.php?email=<?php echo $email; ?>">Tickets</a></p>
                </li>
                <li><img
                        src="https://i.ibb.co/Xx9XbLV/help-desk-computer-icons-icon-design-technical-support-png-favpng-ZFKe-CZq-Pe-K0-Vnj-E5y-Nddw-FUb-X.jpg">
                    <p><a href="customertext.php?email=<?php echo $email; ?>">Customers Text</a></p>
                </li>

            </ul>
            <ul>
                <li><img src="https://i.ibb.co/YtX4sSw/logout.png">
                    <p>Log Out</p>
                </li>
            </ul>
        </div>

        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card mt-5">
                        <div class="card-header">
                            <h2 class="display-6 text-center">Customers list</h2>
                        </div>
                        <div class="card-body">
                            <table class="table text-center">
                                <thead>
                                    <tr>
                                        <th style="width: auto;">Name</th>
                                        <th style="width: auto;">Email</th>
                                        <th style="width: auto;">Password</th>
                                        <th style="width: auto;">Type</th>
                                        <th style="width: 300px;"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    while ($row = mysqli_fetch_array($result)) {
                                        ?>
                                        <tr style="border-bottom: 25px solid transparent;">
                                            <td><?php echo $row['user_name'] ?></td>
                                            <td><?php echo $row['user_email'] ?></td>
                                            <td><?php echo $row['user_password'] ?></td>
                                            <td><?php echo $row['user_type'] ?></td>
                                            <td>
                                                <a href="#" class="btn btn-primary" style="background-color: blue">Edit</a>
                                                <a href="config/deletecustomerconfig.php?email=<?php echo $row['user_email'] ?>& a_email=<?php echo $email ?>"
                                                    class="btn btn-primary" style="background-color: red;">Delete</a>

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