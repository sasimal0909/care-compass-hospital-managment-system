<?php
// Start session
session_start();

// Create database connection
$connection = mysqli_connect('localhost', 'root', '', 'carecompass');

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}

// Get username and password from form
$username = $_POST["username"];
$password = $_POST["password"];

// Prepare and execute the query
$query = "SELECT * FROM doctor WHERE username=? AND password=?";
$sendto = $connection->prepare($query);
$sendto->bind_param("ss", $username, $password);
$sendto->execute();
$result = $sendto->get_result();

if ($result->num_rows == 1) {
    // Store username in session
    $_SESSION['username'] = $username;

    // Redirect to doctor dashboard
    header("Location: doctor_dashboard.html");
    exit();
} else {
    // Redirect back to login page with error message
    echo "<script>alert('Invalid username or password'); window.location.href='doctor_login.html';</script>";
}

// Close connections
$sendto->close();
$connection->close();
?>
