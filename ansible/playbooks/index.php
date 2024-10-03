<?php
$servername = "192.168.0.4:3306"; // Replace with your MySQL server hostname
$username = "test_user";        // Replace with your MySQL username
$password = "password123";            // Replace with your MySQL password
$dbname = "test_db";       // Replace with your MySQL database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Successfully connected to the MySQL database!";
$conn->close();
?>
