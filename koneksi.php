
?>

<?php
$host = 'localhost'; // Ganti dengan host Anda
$user = 'admin_pos';      // Ganti dengan username Anda
$pass = '7X4VU)R#P((v';          // Ganti dengan password Anda
$db   = 'admin_pos'; // Ganti dengan nama database Anda

$koneksi = mysqli_connect($host, $user, $pass, $db);

if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>
