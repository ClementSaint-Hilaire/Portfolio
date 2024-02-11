<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="icon" type="image/png" href="../images/logo.png" />
    <link rel="stylesheet" href="../css/experiences.css">  
    <title>csh</title>
</head>
<body>
    
    <?php include 'composants/header.html'; ?>

    <section class="experiences">
        <div class="titre">
            <h1><span>Mes</span> expériences</h1>
            <h2>FORMATIONS, EMPLOIS, STAGES.</h2>
        </div>

        <div class="experiencesProCard" id="container">

            <?php
               include '../configuration/database.php';

                $query = $db->prepare("SELECT * FROM xpcard ORDER BY id ASC");

                if ($query->execute()) {
                    $query->bindColumn('id',$id);
                    $query->bindColumn('linkimg', $linkimg);
                    $query->bindColumn('categorie', $categorie);
                    $query->bindColumn('titre', $titre);
                    $query->bindColumn('liensite', $liensite);
                    $query->bindColumn('date', $date);
                
                    echo '<div class="carousel">';
                            while ($query->fetch(PDO::FETCH_BOUND)) {
                                    echo '<div class="xpCard" id="' . ($id). '" style=" background-image: url(' . htmlspecialchars($linkimg) . ')">';
                                        echo '<div class="contenu">';
                                            echo '<h1>' . htmlspecialchars($categorie) . '</h1>';
                                            echo '<h2>' . htmlspecialchars($titre) . '</h2>';
                                            echo '<div class="cardFooter">';
                                                echo '<div class="liensToSite">';
                                                    echo '<h1><a href="' . htmlspecialchars($liensite) . '" target="_blank">site internet</a></h1>';
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

                    echo '<script>var nbr = ' . $query->rowCount() . '</script>';

                } else {
                    echo "Erreur lors de l'exécution de la requête : " . $query->errorInfo()[2];
                }

                $db = null;
            ?>  


        </div>
        <div class="boutons">
                <img src="../images/buttonL.svg" class="boutonL">
                <img src="../images/buttonR.svg" class="boutonR">
            </div>
    </section>

 <?php
    include '../configuration/database.php';
    
    $query2 = $db->prepare("SELECT * FROM ecoles ORDER BY id ASC");

        if ($query2->execute()) {
                $query2->bindColumn('id',$id);
                $query2->bindColumn('imglink', $imglink);
                $query2->bindColumn('titre', $titre);
                $query2->bindColumn('ecolelink', $ecolelink);
                $query2->bindColumn('ecolenom', $ecolenom);
                $query2->bindColumn('ville', $ville);
        } else {
        echo "Erreur lors de l'exécution de la requête : " . $query2->errorInfo()[2];
        }
        
        echo '<section class="ecolesExperiences">';
            while ($query2->fetch(PDO::FETCH_BOUND)) {
                echo '<div class="cardContainer">';
                    echo '<article class="cardArticle">';
                        echo '<img src="' . htmlspecialchars($imglink) . '" class="cardImage">';
                        echo '<div class="cardData">';
                            echo '<h1>' . htmlspecialchars($titre) . '</h1>';
                            echo '<div class="cardDataFooter">';
                                echo '<a href="' . htmlspecialchars($ecolelink) . '" target="_blank">' . htmlspecialchars($ecolenom) . '</a>';
                                echo '<h2>📍 ' . htmlspecialchars($ville) . '</h2>';
                            echo '</div>';
                        echo '</div>';
                    echo '</article>';
                echo '</div>';
            }
        echo '</section>';



    ?>

    <?php include 'composants/footer.html'; ?>

    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="../script/carousel.js"></script>
</body>
</html>