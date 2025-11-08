<?php
// Get data from form submission
$fullName = $_POST["fullname"];
$username = $_POST["username"];
$email = $_POST["email"];
$password = $_POST["password"];
$specialization = $_POST["confirm_password"];

// Database connection
$connection = mysqli_connect('localhost', 'root', '', 'carecompass');
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
} else {
    // Prepare the query to insert data into the database
    $sendto = $connection->prepare("INSERT INTO admin (fullname, username, email, password, confirm_password) VALUES (?, ?, ?, ?, ?)");
    $sendto->bind_param("sssss", $fullName, $username, $email, $password, $specialization);
    $sendto->execute();

    if ($sendto->affected_rows > 0) {
        echo "Signup Successful";
    } else {
        echo "Error: " . $connection->error;
    }

    // Close the connection
    $sendto->close();
    $connection->close();
}
?>
