<?php
// TESTOVACI SET PRO MYSQL A PHP SPOJENI!
$servername = "127.0.0.1"; //$servername = "db"; nebo zkusit "localhost"
$username = "martin";
$password = "martin";
$dbname = "guitarshop";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("<h2>❌ Připojení k databázi selhalo:</h2> " . $conn->connect_error);
}

echo "<h1>✅ Připojení k databázi $dbname úspěšné!</h1>";

$result = $conn->query("SHOW TABLES");
if ($result && $result->num_rows > 0) {
    echo "<h3>Tabulky:</h3><ul>";
    while ($row = $result->fetch_array()) {
        echo "<li>" . htmlspecialchars($row[0]) . "</li>";
    }
    echo "</ul>";
} else {
    echo "<p>Databáze je prázdná nebo neobsahuje tabulky.</p>";
}
$conn->close();
?>
