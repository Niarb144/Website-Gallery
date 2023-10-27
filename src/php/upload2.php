<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "events_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST["submit"])) {
    $fileNames = $_FILES['files']['name'];
    $fileTypes = $_FILES['files']['type'];
    $fileTmpNames = $_FILES['files']['tmp_name'];

    // Loop through each file and handle the upload
    for ($i = 0; $i < count($fileNames); $i++) {
        $fileExt = pathinfo($fileNames[$i], PATHINFO_EXTENSION);
        $validExtensions = array("jpg", "jpeg", "png", "gif", "mp4", "avi", "mov");
        if (in_array(strtolower($fileExt), $validExtensions)) {
            $fileData = file_get_contents($fileTmpNames[$i]);
            $fileData = base64_encode($fileData);

            // Insert the file data into the database
            $sql = "INSERT INTO files (file_name, file_type, file_path, album_name) VALUES ('$fileNames[$i]', '$fileTypes[$i]', '$fileData')";
            if ($conn->query($sql) === TRUE) {
                echo "File uploaded successfully: " . $fileNames[$i] . "<br>";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        } else {
            echo "Invalid file format: " . $fileNames[$i] . "<br>";
        }
    }
}

$conn->close();
?>
