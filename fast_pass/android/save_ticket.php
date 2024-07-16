<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include '../connection/connection.php';
include 'full/qrlib.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $location = $_POST['location'];
    $adults = $_POST['adults'];
    $children = $_POST['children'];
    $totalPrice = $_POST['totalPrice'];
    $qrMessage = $_POST['qrMessage'];
    $customerId = $_POST['customer_id'];

    $qrImageName = 'qr_' . time() . '.png';
    $qrImagePath = 'qr_codes/' . $qrImageName;

    QRcode::png($qrMessage, $qrImagePath);

    $stmt = $conn->prepare("INSERT INTO ticket (customer_id, qr_code, adults, children, amount_paid, ticket_type, status) VALUES (?, ?, ?, ?, ?, 'entrance', '1')");
    $stmt->bind_param("isiis", $customerId, $qrImageName, $adults, $children, $totalPrice);

    if ($stmt->execute()) {
        echo "Ticket saved successfully";
    } else {
        echo "Error: " . $stmt->error;
    }


    $stmt->close();
}

$conn->close();
?>