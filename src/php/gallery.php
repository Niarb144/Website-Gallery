<?php include  '../php/components/header.php'; ?>

<html>
<body>
<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <!-- Container wrapper -->
        <div class="container-fluid">
          <!-- Toggle button -->
          <button
            class="navbar-toggler"
            type="button"
            data-mdb-toggle="collapse"
            data-mdb-target="#navbarCenteredExample"
            aria-controls="navbarCenteredExample"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <i class="fas fa-bars"></i>
          </button>
      
          <!-- Collapsible wrapper -->
          <div
            class="collapse navbar-collapse justify-content-center"
            id="navbarCenteredExample"
          >
            <!-- Left links -->
            <ul class="navbar-nav mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
              </li>
              <!-- Navbar dropdown -->
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#"
                  id="navbarDropdown"
                  role="button"
                  data-mdb-toggle="dropdown"
                  aria-expanded="false"
                >
                  Dropdown
                </a>
                <!-- Dropdown menu -->
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li>
                    <a class="dropdown-item" href="../upload.html">Upload</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="../php/gallery.php">Gallery</a>
                  </li>
                  <li><hr class="dropdown-divider" /></li>
                  <li>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link disabled"
                  >Disabled</a
                >
              </li>
            </ul>
            <!-- Left links -->
          </div>
          <!-- Collapsible wrapper -->
        </div>
        <!-- Container wrapper -->
      </nav>
    <!--Navbar end-->

    <!--Header-->
    <div class="parallax-container">
        <div class="parallax-image" style="background-image: url('../../assets/img/imaramall.webp');"></div>
        <div class="parallax-content">
            <div data-aos="fade-right" 
                data-aos-duration="1000"
                data-aos-easing="ease-in-sine">
                <h1>Imaara through the years</h1>
                <p>Scroll Down to see more</p>
            </div>
        </div>
      </div>

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

// Prepare and execute the SQL query to retrieve files from the database
$sql = "SELECT file_name, file_type, file_path FROM files";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $fileName = $row["file_name"];
        $fileType = $row["file_type"];
        $filePath = $row["file_path"];

        // Display the file details and embed images or videos in the page
        

        if ($fileType === "image") {
            echo "<div class = 'image-gallery'>
            <div class = 'gallery-item'>
            <img src='$filePath' alt='$fileName' >
            </div>
            ";
        } elseif ($fileType === "video") {
            echo "
            <div class = 'gallery-item'>
            <video controls width='400'><source src='$filePath' type='video/mp4'></video>
            </div>
            </div>";
        }
    }
} else {
    echo "No files found in the database.";
}



// Close the database connection
$conn->close();
?>

<?php include '../php/components/footer.php'; ?>


<!--Js-->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
      </script>

    <!-- MDB -->
    <script
    type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"
    ></script>

    <!--Parallax-->
    <script type="text/javascript" src="../assets/js/parallax.js"></script>

    <!--Slider-->
    <script type="text/javascript" src="../assets/js/slider.js"></script>

    <!--Gallery-->
    <script type="text/javascript" src="../assets/js/gallery.js"></script>

    <!--Pagination-->
    <script type="text/javascript" src="../assets/js/pagination.js"></script>
</body>
</html>