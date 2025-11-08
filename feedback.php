<?php
// Check if feedback is set
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["feedback"])) {
    $feedback = trim($_POST["feedback"]);

    // Database connection
    $connection = new mysqli('localhost', 'root', '', 'carecompass');

    // Check connection
    if ($connection->connect_error) {
        die("Connection failed: " . $connection->connect_error);
    } 

    // Prepare and bind
    $sendto = $connection->prepare("INSERT INTO feedback (feedback) VALUES (?)");
    $sendto->bind_param("s", $feedback);

    // Execute and check success
    if ($sendto->execute()) {
        echo "Feedback received successfully";
    } else {
        echo "Error: " . $sendto->error;
    }

    // Close connections
    $sendto->close();
    $connection->close();
} else {
    echo "Invalid request.";
}
?>
