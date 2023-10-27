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
}?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Imaara Gallery</title>
    <link rel="icon" type="image" href="../../assets/img/imaaralogo.png" style= "height: 100px; width: 100px;">

    <!--CSS-->
    <link rel="stylesheet" href="../../assets/css/style.css">

    <!--Boxicons-->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
     <!--Header-->
     <div class="header">
        <nav class="navigation">
          <div class = "logo">
            <a href="#"><img src="../../assets/img/imaaralogo.png" alt=""></a>
          </div>

          <div class = "links">
            <ul>
              <li><a href = "">Home</a></li>
              <li><a href = "">Stores</a></li>
            </ul>
          </div>
  
          <input type="checkbox" id="active">
          <label for="active" class="menu-btn"><span></span></label>
          <label for="active" class="close"></label>
          <div class="wrapper">
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Stores</a></li>
            <li><a href="../../index.php">Gallery</a></li>
            <li><a href="#">Contacts</a></li>
          </ul>
          </div>
        </nav>


        <div class = "photo-gallery">
        <h2>Gallery</h2>
        <div class="gallery" style="margin-top: 5rem; justify-content: center;">
        <?php

// Prepare and execute the SQL query to retrieve files from the database
$sql = "SELECT file_name, file_type, file_path FROM greenpeace";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $fileName = $row["file_name"];
        $fileType = $row["file_type"];
        $filePath = $row["file_path"];

        // Display the file details and embed images or videos in the page
        

        if ($fileType === "image") {
            echo "<div class = 'gallery-item'>
            <img src='$filePath' alt='$fileName' onclick = 'openModal(0)'>
            </div>
            ";
        } elseif ($fileType === "video") {
            echo "<video controls width='350' height='200'><source src='$filePath' type='video/mp4'></video><br>";
        }
    }
} else {
    echo "No files found in the database.";
}

// Close the database connection
$conn->close();
?>
</div>

</body>
</html>
