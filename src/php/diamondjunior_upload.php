<?php
// MySQL database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "events_db";

// Create database connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES["files"])) {
    $fileArray = $_FILES["files"];

    //loop through each uploaded file
    for ($i = 0; $i < count($fileArray["name"]); $i++) {
        $fileName = $fileArray["name"][$i];
        $fileType = pathinfo($fileName, PATHINFO_EXTENSION);
        $fileTempName = $fileArray["tmp_name"][$i];

    // Determine the file type (image or video)
    $allowedImageTypes = ["jpg", "jpeg", "png", "gif"];
    $allowedVideoTypes = ["mp4", "avi", "mov", "wmv"];

    if (in_array(strtolower($fileType), $allowedImageTypes)) {
        $fileType = "image";
    } elseif (in_array(strtolower($fileType), $allowedVideoTypes)) {
        $fileType = "video";
    } else {
        echo "Invalid file type: " . $fileName . "<br>";
        exit;
    }

    // Prepare and execute the SQL query to insert file details into the database
    $sql = "INSERT INTO diamondjuniour (file_name, file_type, file_path, unique_identifier) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);

    // Generate a unique identifier for the file
    $uniqueIdentifier = uniqid();

    // Define the file path
    $uploadDir = "./media/";
    $targetPath = $uploadDir . $uniqueIdentifier . "." . $fileType;

    // Bind parameters and execute the statement
    $stmt->bind_param("ssss", $fileName, $fileType, $targetPath, $uniqueIdentifier);
    $stmt->execute();

    // Move the uploaded file to the desired directory
    if (move_uploaded_file($fileTempName, $targetPath)) {
       echo '<script type = "text/javascript">';
       echo 'alert("Uploaded file Successfully")';
       echo '</script>';
       echo '<script type="text/javascript">
           window.location = "valentines.php"
      </script>';
        
    } else {
        echo "Error uploading file: " . $file["error"] . "<br>";
    }

    

    $stmt->close();
    }
}

// Close the database connection
$conn->close();
?>
