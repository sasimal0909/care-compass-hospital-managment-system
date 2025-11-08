<?php
// Get data from form submission
$name = $_POST["name"];
$email = $_POST["email"];
$subject = $_POST["subject"];
$message = $_POST["message"];

// Database connection
$connection = new mysqli('localhost', 'root', '', 'carecompass');
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
} else {
    // Prepare the query to insert data into the database
    $sendto = $connection->prepare("INSERT INTO contact_messages (name, email, subject, message) VALUES (?, ?, ?, ?)");
    $sendto->bind_param("ssss", $name, $email, $subject, $message);
    $sendto->execute();

    if ($sendto->affected_rows > 0) {
        echo "Massage Recieved Successfully";
    } else {
        echo "Error: " . $connection->error;
    }

    // Close the connection
    $sendto->close();
    $connection->close();
}
?>