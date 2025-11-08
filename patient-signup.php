<?php
// Get data from form submission
$fullName = $_POST["fullname"];
$username = $_POST["username"];
$email = $_POST["email"];
$password = $_POST["password"];
$phone = $_POST["phone"];

// Database connection
$connection = mysqli_connect('localhost', 'root', '', 'carecompass');
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
} else {
    // Prepare the query to insert data into the database
    $sendto = $connection->prepare("INSERT INTO patient (fullname, username, email, password, phone) VALUES (?, ?, ?, ?, ?)");
    $sendto->bind_param("sssss", $fullName, $username, $email, $password, $phone);
    $sendto->execute();

    echo "Signup Successful";

    // Close the connection
    $sendto->close();
    $connection->close();
}
?>
