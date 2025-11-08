<?php
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
$query = "SELECT * FROM patient WHERE username=? AND password=?";
$sendto = $connection->prepare($query);
$sendto->bind_param("ss", $username, $password);
$sendto->execute();
$result = $sendto->get_result();

if ($result->num_rows == 1) {
    // Start session and store username
    session_start();
    $_SESSION['username'] = $username;
    
    // Redirect to dashboard
    header("Location: patient_dashboard.html");
    exit();
} else {
    // Redirect back to login page with error message
    echo "<script>alert('Invalid username or password'); window.location.href='index.html';</script>";
}

// Close connections
$sendto->close();
$connection->close();
?>
