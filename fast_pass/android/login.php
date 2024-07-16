<?php
include '../connection/connection.php';

$email = $_POST['email'];
$password = $_POST['password'];

// Query for customer
$sql_customer = "SELECT customer_id, full_name, email FROM customer WHERE email='$email' AND password = '" . md5($password) . "'";

// Query for operator
$sql_operator = "SELECT * FROM operator WHERE username='$email' AND password = '" . md5($password) . "'";

$result_customer = mysqli_query($conn, $sql_customer);
$result_operator = mysqli_query($conn, $sql_operator);

if (mysqli_num_rows($result_customer) > 0) {
    $row = mysqli_fetch_assoc($result_customer);
    echo json_encode(array("status" => "success", "role" => "customer", "customer_id" => $row['customer_id'], "full_name" => $row['full_name'], "email" => $row['email']));
} elseif (mysqli_num_rows($result_operator) > 0) {
    $row = mysqli_fetch_assoc($result_operator);
    echo json_encode(array("status" => "success", "role" => "operator", "operator_id" => $row['operator_id'], "username" => $row['username']));
} else {
    echo json_encode(array("status" => "failed", "message" => "Invalid email or password"));
}

mysqli_close($conn);
?>