<?php       
try {
        $db = new PDO('mysql:host=localhost;dbname=portefoliocshdb;charset=utf8;', 'root', 'mdp');
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
            die('Erreur de connexion à la bdd : ' . $e->getMessage());
}

?>