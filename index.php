<?php include 'db_config.php'; ?>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="style.css"><title>Smart Cinema</title></head>
<body>
<nav><h2>SmartCinema</h2><div>Login | Register</div></nav>
<div class="grid">
    <?php
    $res = mysqli_query($conn, "SELECT * FROM Movie");
    while($row = mysqli_fetch_assoc($res)) {
        echo "<div class='card'>
                <h3>{$row['Title']}</h3>
                <p>{$row['Genre']} | {$row['Duration']}m</p>
                <p>Rating: ★{$row['Rating']}</p>
                <a href='booking.php?id={$row['Movie_ID']}' class='btn'>Book Now</a>
              </div>";
    }
    ?>
</div>
</body>
</html>