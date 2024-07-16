<?php
include '../connection/connection.php';

$fullName = $_POST['fullName'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];

// Check if the phone number  or email already exists
$checkPhoneQuery = "SELECT * FROM customer WHERE phone_number = '$phone' or email = '$email'";
$result = mysqli_query($conn, $checkPhoneQuery);

if (mysqli_num_rows($result) > 0) {
    echo "Customer already exists";
} else {
    $sql = "INSERT INTO customer (full_name, email, phone_number, password) VALUES ('$fullName', '$email', '$phone', '" . md5($password) . "')";

    if (mysqli_query($conn, $sql)) {
        echo "Registration successful";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

mysqli_close($conn);
?>