<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="..css/styles.css">
    <link rel="stylesheet" href="../css/competences.css">  
    <title>csh</title>
</head>
<body>
    <?php include 'composants/header.html'; ?>

    <section class="competences">
        <div class="titreEtGraphique">
            <h1><span>Mes</span> compétences</h1>
            <h2>LANGUAGES, LOGICIELS.</h2>
            <div class="graphique">
                <div class="fondGraphique">
                    <div class="statistiquesEtTitre">
                        <div class="langages">
                          <img src="../images/Competences/Langages light computer.svg" alt="stats" class="imgw1024">
                          <img src="../images/Competences/Langages light mobile.svg" alt="stats" class="imgw768">
                        </div>
                        <div class="titre">
                            <h1>LANGUAGES MAÎTRISÉS</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       
    </section>

    <div class="titreCarrousel">
            <div class="carrousel">
                <img src="../images/appText.svg">
                <img src="../images/rond.svg">
                <img src="../images/logicielText.svg">
                <img src="../images/rond.svg">
            </div>
            <div class="carrousel">
                <img src="../images/appText.svg">
                <img src="../images/rond.svg">
                <img src="../images/logicielText.svg">
                <img src="../images/rond.svg">
            </div>            
            <div class="carrousel">
                <img src="../images/appText.svg">
                <img src="../images/rond.svg">
                <img src="../images/logicielText.svg">
                <img src="../images/rond.svg">
            </div>
    </div>

    <?php
        try {
            $db = new PDO('mysql:host=localhost;dbname=portefoliocshdb;charset=utf8;', 'root', '');
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die('Erreur de connexion à la bdd : ' . $e->getMessage());
        }

        $query = $db->prepare("SELECT * FROM appcard");

        if ($query->execute()) {
            $query->bindColumn('nom', $nom);
            $query->bindColumn('categorie', $categorie);
            $query->bindColumn('imglink', $imglink);
            $query->bindColumn('description', $description);
            
            echo '<div class="biblioApps">';

                while ($query->fetch(PDO::FETCH_BOUND)) {
                        echo '<div class="cardApp">';
                                    echo '<img src="' . htmlspecialchars($imglink) . '" alt="">';
                                    echo '<div class="cardText">';
                                        echo '<h1>' . htmlspecialchars($nom) . '</h1>';
                                        echo '<h2>' . htmlspecialchars($categorie) . '</h2>';
                                    echo '</div>';
                            echo '<div class="faceTwo">';
                                echo '<h3>' .htmlspecialchars($description) . '</h3>';
                            echo '</div>';
                        echo '</div>';
                }
                
            echo '</div>';

        } else {
            echo "Erreur lors de l'exécution de la requête : " . $query->errorInfo()[2];
        }

        $db = null;
    ?>


        <?php include 'composants/footer.html'; ?>

</body>
</html>