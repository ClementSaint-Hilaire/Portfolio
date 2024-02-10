<?php       
 try {
        $db = new PDO('mysql:host=clemezalibrecour.mysql.db;dbname=clemezalibrecour;charset=utf8;', 'clemezalibrecour', 'HZyvey267Ehce');
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        die('Erreur de connexion à la bdd : ' . $e->getMessage());
    }
?>