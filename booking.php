<?php include 'db_config.php'; ?>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="style.css"><title>Select Seats</title></head>
<body>
<nav><h2>Choose Seats</h2><a href="index.php" style="color:white">Back</a></nav>
<div style="text-align:center; padding: 5%;">
    <h3>Screen This Way</h3>
    <div style="width:300px; height:5px; background:white; margin:10px auto;"></div>
    <div class="seat-map">
        <?php
        $seats = mysqli_query($conn, "SELECT * FROM Seat");
        while($s = mysqli_fetch_assoc($seats)) {
            echo "<div class='seat' onclick='toggleSeat(this)'>{$s['Seat_Number']}</div>";
        }
        ?>
    </div>
    <a href="checkout.php" class="btn">Proceed to Snack & Payment</a>
</div>
<script>
function toggleSeat(el) { el.classList.toggle('selected'); }
</script>
</body>
</html>