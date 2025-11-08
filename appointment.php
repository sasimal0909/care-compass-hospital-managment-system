<?php
// Create database connection
$connection = mysqli_connect('localhost', 'root', '', 'carecompass');

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

// Get form data
$patientName = $_POST["patientname"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$appointmentDate = $_POST["appointmentdate"];
$appointmentTime = $_POST["appointmenttime"];
$notes = $_POST["notes"];

// Prepare and bind
$query = "INSERT INTO appointments (patientname, email, phone, appointmentdate, appointmenttime, notes) VALUES (?, ?, ?, ?, ?, ?)";
$stmt = $connection->prepare($query);
$stmt->bind_param("ssssss", $patientName, $email, $phone, $appointmentDate, $appointmentTime, $notes);

// Execute and check for success
if ($stmt->execute()) {
    echo "Appointment scheduled successfully!";
} else {
    echo "Error scheduling appointment: " . $stmt->error;
}

// Close connections
$stmt->close();
$connection->close();
?>
