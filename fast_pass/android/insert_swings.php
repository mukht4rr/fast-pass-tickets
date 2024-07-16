<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
include '../connection/connection.php';
include 'full/qrlib.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $totalTickets = $_POST['total_tickets'];
    $totalPrice = $_POST['total_price'];
    $qrMessage = $_POST['qrMessage'];
    $customerId = $_POST['customer_id'];
    $status = 1;

    $qrImageName = 'qr_' . time() . '.png';
    $qrImagePath = 'qr_codes/' . $qrImageName;

    QRcode::png($qrMessage, $qrImagePath);

    $stmt = $conn->prepare("INSERT INTO swing (customer_id, qr_code, total_tickets, total_price, status) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("issii", $customerId, $qrImagePath, $totalTickets, $totalPrice, $status);

    if ($stmt->execute()) {
        echo "Swing saved successfully";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>