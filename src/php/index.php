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

?>
<html lang = "en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery Editor</title>
    <link rel="icon" type="image" href="./assets/img/imaaralogo.png" style= "height: 100px; width: 100px;">

    <!--CSS-->
    <link rel="stylesheet" href="./assets/css/style.css">

    <!--Boxicons-->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <style>
         body {
           margin: 0;
        }
        
        h2 {
            text-align: center;
        }
        
        .upload-form {
            text-align: center;
            background: #23edf7;
            position: fixed;
            justify-content: center;
           
            
            width: 200px;
            padding: 8px;
        }

        .mall-opening-upload {
            text-align: center;
            background: #33fa23;
            position: fixed;
            justify-content: center;
           
            
            width: 200px;
            padding: 8px;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
        }
        
        input[type="file"] {
            display: block;
            margin: 0 auto;
        }

        table{
            margin: auto;
            justify-content: center;
            width: 600px;
        }

        .pages{
            margin: auto;
            width: 600px;
        }
    </style>
</head>

            <form action="upload.php" method="POST" enctype="multipart/form-data" class = "upload-form">
                <!--<div class="file-input">
                    <label for="file">Select File
                        <p class="file-name"></p>
                    </label>
                    <input type="file" class="select" id="file" name="files[]" multiple>
                </div>
                
                <div class="file-submit">
                    <label for="submit">Upload Files</label>
                    <input type="submit" class="upload" value="Upload Files">
                </div>-->
                <label for="file">Select file(s):</label>
                <input type="file" name="files[]" id="file" multiple>
                <input type="submit" value="Upload" name="submit">
                
            </form>

            
</html>

<?php

// Define the number of items per page
$itemsPerPage = 20;

// Get the current page number from the URL parameter, default to 1
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

// Calculate the offset for the current page
$offset = ($page - 1) * $itemsPerPage;

// Check if the 'delete' parameter is set in the URL
if (isset($_GET['delete'])) {
    $deleteId = (int)$_GET['delete'];

    // Retrieve the file path from the database to delete the file from the 'media' folder
    $sqlDelete = "SELECT file_path FROM files WHERE file_id = $deleteId";
    $resultDelete = $conn->query($sqlDelete);

    if ($resultDelete->num_rows == 1) {
        $rowDelete = $resultDelete->fetch_assoc();
        $filePathToDelete = $rowDelete['file_path'];

        // Delete the file from the 'media' folder
        if (unlink($filePathToDelete)) {
            // Delete the file details from the database
            $sqlDeleteRecord = "DELETE FROM files WHERE file_id = $deleteId";
            $resultDeleteRecord = $conn->query($sqlDeleteRecord);
            if ($resultDeleteRecord) {
                echo "File deleted successfully.";
            } else {
                echo "Error deleting file details from the database: " . $conn->error;
            }
        } else {
            echo "Error deleting file: $filePathToDelete";
        }
    } 
}

// Prepare and execute the SQL query to retrieve files from the database with pagination
$sql = "SELECT file_id, file_name, file_type, file_path FROM files LIMIT $itemsPerPage OFFSET $offset";
$result = $conn->query($sql);

// Display the table header
echo "<table border='1'>
        <tr>
            <th>File Name</th>
            <th>File Type</th>
            <th>Image</th>
            <th>Delete</th>
        </tr>";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $id = $row['file_id'];
        $fileName = $row["file_name"];
        $fileType = $row["file_type"];
        $filePath = $row["file_path"];

        // Display the row in the table
        echo "<tr>";
        echo "<td>" . $fileName . "</td>";
        echo "<td>" . $fileType . "</td>";

        if ($fileType === "image") {
            echo "<td><img src='$filePath' alt='$fileName' width='100'></td>";
        } elseif ($fileType === "video") {
            echo "<td><video controls width='150'><source src='$filePath' type='video/mp4'></video></td>";
        }

        // Add a delete link for each row
        echo "<td><a href='?delete=$id'>Delete</a></td>";

        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='4'>No files found in the database.</td></tr>";
}

echo "</table>";

// Calculate the total number of pages
$sqlTotal = "SELECT COUNT(*) AS total FROM files";
$resultTotal = $conn->query($sqlTotal);
$rowTotal = $resultTotal->fetch_assoc();
$totalItems = $rowTotal['total'];
$totalPages = ceil($totalItems / $itemsPerPage);

// Display pagination links
echo "<div class = 'pages'>";
for ($i = 1; $i <= $totalPages; $i++) {
    echo "<a href='?page=$i'>$i</a> ";
}
echo "</div>";

// Close the database connection
$conn->close();
?>