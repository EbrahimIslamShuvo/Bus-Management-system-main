<?php
require_once ('config/connect.php');

if (isset($_GET['email'])) {
    $email = $_GET['email'];
    
    // Fetch user information
    $user_query = "SELECT * FROM users WHERE user_email ='$email'";
    $user_result = mysqli_query($con, $user_query);
    $user_row = mysqli_fetch_array($user_result);

    // Fetch user's ticket history
    $ticket_query = "SELECT * FROM buslist JOIN sellticket ON buslist.id = sellticket.busid WHERE sellticket.cus_email= '$email'";
    $ticket_result = mysqli_query($con, $ticket_query);

    // count operator number
    $query_op = "SELECT * FROM operatorlist";
    $result_op = mysqli_query($con, $query_op);
    $row_op = mysqli_fetch_array($result_op, MYSQLI_ASSOC);
    $count_op = mysqli_num_rows($result_op);

    // count customer number
    $query_cus = "SELECT * FROM users WHERE user_type = 'customer'";
    $result_cus = mysqli_query($con, $query_cus);
    $row_cus = mysqli_fetch_array($result_cus, MYSQLI_ASSOC);
    $count_cus = mysqli_num_rows($result_cus);

    // count selling ticket number
    $query_tic = "SELECT * FROM sellticket";
    $result_tic = mysqli_query($con, $query_tic);
    $row_tic = mysqli_fetch_array($result_tic, MYSQLI_ASSOC);
    $count_tic = mysqli_num_rows($result_tic);

    // count customer text number
    $query_text = "SELECT * FROM contractus";
    $result_text = mysqli_query($con, $query_text);
    $row_text = mysqli_fetch_array($result_text, MYSQLI_ASSOC);
    $count_text = mysqli_num_rows($result_text);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Administration</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/useradmin.css">
  
</head>
<body>
  <div class="header">
  <div class="sidebar">
            <div class="user">
                <img src="https://i.ibb.co/JkCMRkq/avatar-people-person-profile-user-women-icon-icon-search-engine-23.png" class="userpic">
                <div>
                  <h2><?php echo $user_row['user_name']; ?></h2>
                  <p><?php echo $user_row['user_email']; ?></p>
                </div>
            </div>
            <ul>
                <li><img src="https://i.ibb.co/xjc8mSN/dashboard.png"><p><a href="mainadmindash.php?email=<?php echo $email ; ?>">Dashboard</a></p></li>
                <li><img src="https://i.ibb.co/5x6gHXf/operator-icon-14.png"><p><a href="operator.php?email=<?php echo $email ; ?>">Operator</a></p></li>
                <li><img src="https://i.ibb.co/X7hhwzy/customers-icon-29.png"><p><a href="customerfmain.php?email=<?php echo $email ; ?>">Customer</a></p></li>
                <li><img src="https://i.ibb.co/Dz5S4C6/admit-one-ticket-icon-black-and-white-isolated-wite-free-vector.jpg"><p><a href="operator.php?email=<?php echo $email ; ?>">Tickets</a></p></li>
                <li><img src="https://i.ibb.co/Xx9XbLV/help-desk-computer-icons-icon-design-technical-support-png-favpng-ZFKe-CZq-Pe-K0-Vnj-E5y-Nddw-FUb-X.jpg"><p><a href="customertext.php?email=<?php echo $email ; ?>">Customers Text</a></p></li>
                
            </ul>
            <ul>
            <li><img src="https://i.ibb.co/YtX4sSw/logout.png"><p><a href="config/logout.php">Log Out</a></p></li>
            </ul>
        </div>


    

    <div class="container">
        <div class="row">
          <div class="col-lg-6 ">
            <div class="box box-blue">
              <div class="inner">
                <h3><?php echo $count_op; ?></h3>
                <p>Operators</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="operator.php?email=<?php echo $email ; ?>" class="box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
    
          <div class="col-lg-6">
            <div class="box box-green">
              <div class="inner">
                <h3><?php echo $count_op; ?></h3>
                <p>Customers</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="customerfmain.php?email=<?php echo $email ; ?>" class="box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div>
        <div class="row">
    
          <div class="col-lg-6">
            <div class="box box-red">
              <div class="inner">
                <h3><?php echo $count_tic; ?></h3>
                <p>Tickets Sell</p>
              </div>                                   
              <a href="#" class="box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
    
          <div class="col-lg-6">
            <div class="box box-pink">
              <div class="inner">
                <h3><?php echo $count_text; ?></h3>
                <p>Customers Text</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="customertext.php?email=<?php echo $email ; ?>" class="box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>

        </div>
      </div>
      


  </div>



</body>
</html>
