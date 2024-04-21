<?php
require_once ('config/connect.php');
$query = "SELECT * FROM activity";
$result = mysqli_query($con, $query);
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
$status = $row['status'];
if ($status == "YES") {
    $email = $row["email"];
} else {
    echo '<script>
                alert("do login first");
                window.location.href = "/tickets-system-only-html-and-css-main/login.php";
            </script>';
}
$seat = array(); // Initialize the $seat array

if (isset($_GET['seats'])) {
    // Decode the JSON string back into an array
    $seat = json_decode($_GET['seats'], true);

    // Output the total number of elements in the $seat array
    echo "Total number of seats: " . count($seat);
}
echo 'ami aschi'; // This line will be executed regardless of the condition above
?>