<?php
// =========================
// public/index.php
// =========================

ini_set('display_errors', 1);
error_reporting(E_ALL);

session_start();

$config = require __DIR__ . '/../config/config.php';
require __DIR__ . '/../src/Database.php';
require __DIR__ . '/../src/Auth.php';
require __DIR__ . '/../src/Product.php';

$pdo = Database::connect($config['db']);

// KOŠÍK
$_SESSION['cart'] = $_SESSION['cart'] ?? [];

$action = $_POST['action'] ?? null;

if ($action === 'login') {
    Auth::login($pdo, $_POST['user'], $_POST['pass']);
}

if ($action === 'logout') {
    Auth::logout();
    header('Location: index.php'); exit;
}

if ($action === 'add_product') {
    Product::add($pdo, $_POST, $_FILES['image']);
    header('Location: index.php'); exit;
}

if ($action === 'add') {
    $stmt = $pdo->prepare("SELECT * FROM shop WHERE id = ?");
    $stmt->execute([(int)$_POST['id']]);
    if ($p = $stmt->fetch()) {
        $_SESSION['cart'][] = $p;
    }
}

$sortiment = $_GET['sortiment'] ?? 'e';
$products = Product::getByType($pdo, $sortiment);
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guitar Shop</title>
</head>
<body>

<h1> 🎸 Guitar Shop</h1>

<!--- <a href="?">Vše</a> -->
<a href="?sortiment=e">Elektrické kytary</a>
<a href="?sortiment=a">Akustické kytary</a>
<a href="?sortiment=p">Příslušenství</a>

<?php if (!Auth::check()): ?>
<form method="post">
<input type="hidden" name="action" value="login">
<input name="user" placeholder="user">
<input type="password" name="pass">
<button>Login</button>
</form>
<?php else: ?>
<form method="post">
<input type="hidden" name="action" value="logout">
<button>Logout</button>
</form>

<form method="post" enctype="multipart/form-data">
<input type="hidden" name="action" value="add_product">
<input name="nazev" placeholder="název">
<input name="popis" placeholder="popis">
<input name="cena" placeholder="cena">
<select name="typ">
<option value="e">e</option>
<option value="a">a</option>
<option value="p">p</option>
</select>
<input type="file" name="image">
<button>Přidat</button>
</form>
<?php endif; ?>

<hr>

<?php foreach ($products as $p): ?>
<div>
<h3><?= htmlspecialchars($p['nazev']) ?></h3>

<?php if (!empty($p['obrazek'])): ?>
    <img src="uploads/<?= htmlspecialchars($p['obrazek']) ?>" width="150">
<?php endif; ?>

<p><?= $p['cena'] ?> Kč</p>

<form method="post">
<input type="hidden" name="action" value="add">
<input type="hidden" name="id" value="<?= $p['id'] ?>">
<button>Koupit</button>
</form>
</div>
<?php endforeach; ?>

</body>
</html>
