<!DOCTYPE html>
<html>
<head>
    <title>Image and Video Gallery</title>
    <link rel="stylesheet" href="styles.css">

    <style>
      body {
    font-family: Arial, sans-serif;
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
}

h1 {
    text-align: center;
}

.gallery {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.item {
    width: 30%;
    margin-bottom: 20px;
}

.item img,
.item video {
    width: 100%;
}

.pagination {
    text-align: center;
    margin-top: 20px;
}

.pagination a {
    display: inline-block;
    padding: 5px 10px;
    margin: 0 5px;
    background-color: #f1f1f1;
    color: #333;
    text-decoration: none;
}

.pagination a.active {
    background-color: #ccc;
}

    </style>
</head>
<body>
    <h1>Image and Video Gallery</h1>
    <div class="gallery">
    <?php
// Include the database connection configuration file
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

// Number of items to display per page
$items_per_page = 6;

// Get the current page number from the URL parameter
$current_page = isset($_GET['page']) ? $_GET['page'] : 1;

// Calculate the offset for pagination
$offset = ($current_page - 1) * $items_per_page;

// Query to fetch data from the database with pagination
$sql = "SELECT unique_id, file_path FROM files LIMIT $offset, $items_per_page";
$result = $conn->query($sql);

// Display the media files in the gallery
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $file_path = $row['file_path'];
        $unique_id = $row['unique_id'];
        echo "<div class='item'>";
        if (is_image($file_path)) {
            echo "<img src='$file_path' alt='Image'>";
        } elseif (is_video($file_path)) {
            echo "<video controls><source src='$file_path' type='video/mp4'></video>";
        }
        echo "</div>";
    }
}

// Function to check if the file is an image
function is_image($file_path)
{
    $image_extensions = array('jpg', 'jpeg', 'png', 'gif');
    $ext = strtolower(pathinfo($file_path, PATHINFO_EXTENSION));
    return in_array($ext, $image_extensions);
}

// Function to check if the file is a video
function is_video($file_path)
{
    $video_extensions = array('mp4', 'avi', 'mov');
    $ext = strtolower(pathinfo($file_path, PATHINFO_EXTENSION));
    return in_array($ext, $video_extensions);
}

// Close the database connection
$conn->close();
?>

<div class="pagination">
    <?php
    // Calculate total pages and generate pagination links
    $sql_count = "SELECT COUNT(*) AS total FROM files";
    $result_count = $conn->query($sql_count);
    $row_count = $result_count->fetch_assoc();
    $total_pages = ceil($row_count['total'] / $items_per_page);

    for ($i = 1; $i <= $total_pages; $i++) {
        echo "<a href='index.php?page=$i'>$i</a>";
    }
    ?>
</div>

    </div>
</body>
</html>
