<?php
// =========================
// src/Product.php
// =========================

class Product {

    public static function getByType(PDO $pdo, string $type): array {
        $stmt = $pdo->prepare("SELECT * FROM shop WHERE typ = ?");
        $stmt->execute([$type]);
        return $stmt->fetchAll();
    }

    public static function add(PDO $pdo, array $data, array $file): void {
        Auth::require();
	// POZOR, pokud se nezobrazuji obrazky z DB, dat je do PUBLIC!
        $uploadDir = __DIR__ . '/../public/uploads/';
        if (!is_dir($uploadDir)) mkdir($uploadDir);

        $filename = null;

        if (!empty($file['tmp_name'])) {
            $ext = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
            if (!in_array($ext, ['jpg','png','webp'])) {
                die('Invalid image');
            }

            $filename = bin2hex(random_bytes(16)) . '.' . $ext;
            move_uploaded_file($file['tmp_name'], $uploadDir . $filename);
        }

        $stmt = $pdo->prepare(
            "INSERT INTO shop (nazev, popis, cena, typ, obrazek)
             VALUES (?, ?, ?, ?, ?)"
        );

        $stmt->execute([
            $data['nazev'],
            $data['popis'],
            (int)$data['cena'],
            $data['typ'],
            $filename
        ]);
    }
}
