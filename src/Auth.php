<?php
// =========================
// src/Auth.php             
// =========================

class Auth {
    public static function login(PDO $pdo, string $user, string $pass): bool {
        $stmt = $pdo->prepare("SELECT * FROM users WHERE username = ?");
        $stmt->execute([$user]);
        $u = $stmt->fetch();

        if ($u && password_verify($pass, $u['password'])) {
            $_SESSION['admin'] = true;
            return true;
        }
        return false;
    }

    public static function check(): bool {
        return !empty($_SESSION['admin']);
    }

    public static function require(): void {
        if (!self::check()) {
            http_response_code(403);
            die('Access denied');
        }
    }

    public static function logout(): void {
        session_destroy();
    }
}
