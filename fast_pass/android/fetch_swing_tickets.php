<?php
include '../connection/connection.php';

$customer_id = $_GET['customer_id'];

$sql = "SELECT time as date, total_price, status, qr_code FROM swing WHERE customer_id = ? ORDER BY time DESC";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $customer_id);
$stmt->execute();
$result = $stmt->get_result();

$tickets = array();

while ($row = $result->fetch_assoc()) {
    $row['qr_code'] = 'http://192.168.100.110/fast_pass/android/' . $row['qr_code'];
    $tickets[] = $row;
}

echo json_encode($tickets);

$stmt->close();
$conn->close();
?>