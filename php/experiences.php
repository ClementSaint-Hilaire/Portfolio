<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/experiences.css">  
    <script src="../script/script.js" async></script>
    <title>csh</title>
</head>
<body>
    
    <?php include 'composants/header.html'; ?>

    <section class="experiences">
        <div class="titre">
            <h1><span>Mes</span> expériences</h1>
            <h2>FORMATIONS, EMPLOIS, STAGES.</h2>
        </div>

        <div class="experiencesProCard">

            <?php
                try {
                    $db = new PDO('mysql:host=localhost;dbname=portefoliocshdb;charset=utf8;', 'root', '');
                    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                } catch (PDOException $e) {
                    die('Erreur de connexion à la bdd : ' . $e->getMessage());
                }

                $query = $db->prepare("SELECT * FROM xpcard");

                if ($query->execute()) {
                    $query->bindColumn('linkimg', $linkimg);
                    $query->bindColumn('categorie', $categorie);
                    $query->bindColumn('titre', $titre);
                    $query->bindColumn('liensite', $liensite);
                    $query->bindColumn('date', $date);

                    echo '<div class="autoplay">';
                        while ($query->fetch(PDO::FETCH_BOUND)) {
                                echo '<div class="xpCard" style=" background-image: url(' . htmlspecialchars($linkimg) . ')">';
                                    echo '<div class="content">';
                                        echo '<h1>' . htmlspecialchars($categorie) . '</h1>';
                                        echo '<h2>' . htmlspecialchars($titre) . '</h2>';
                                        echo '<div class="cardFooter">';
                                            echo '<div class="liensToSite">';
                                                echo '<h1><a href="' . htmlspecialchars($liensite) . '">site internet</a></h1>';
                                                echo '<svg xmlns="http://www.w3.org/2000/svg" width="9" height="9" viewBox="0 0 9 9" fill="none">
                                                        <path d="M8.5 1C8.5 0.723858 8.27614 0.5 8 0.5L3.5 0.5C3.22386 0.5 3 0.723858 3 1C3 1.27614 3.22386 1.5 3.5 1.5L7.5 1.5L7.5 5.5C7.5 5.77614 7.72386 6 8 6C8.27614 6 8.5 5.77614 8.5 5.5L8.5 1ZM1.35355 8.35355L8.35355 1.35355L7.64645 0.646447L0.646447 7.64645L1.35355 8.35355Z" fill="#808080"/>
                                                      </svg>';
                                            echo '</div>';
                                            echo '<h2>' . htmlspecialchars($date) . '</h2>';
                                        echo '</div>';
                                    echo '</div>';
                                echo '</div>';
                        }
                    echo '</div>';
                } else {
                    echo "Erreur lors de l'exécution de la requête : " . $query->errorInfo()[2];
                }

                $db = null;
            ?>  


        </div>


    </section>


    <?php include 'composants/footer.html'; ?>

</body>
</html>