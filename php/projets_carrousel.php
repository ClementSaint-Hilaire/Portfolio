<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="../images/logo.png" />
    <link rel="stylesheet" href="../css/projets_carrousel.css">  
</head>
<body>
    
    <section class="carousel">

        <div class="carousselContainer">
            <?php
                include '../configuration/database.php';

                     $query = $db->prepare("SELECT * FROM projetcards");

                     if ($query->execute()) {
                     $query->bindColumn('id',$id);
                     $query->bindColumn('img', $img);
                     $query->bindColumn('titre', $titre);
                     $query->bindColumn('texte', $texte);
                     $query->bindColumn('figmalink', $figmalink);
                     $query->bindColumn('githublink', $githublink);
                    
                         echo '<div class="carousel">';
                             while ($query->fetch(PDO::FETCH_BOUND)) {
                                    echo '<div class="card">';
                                        echo $img;
                                        echo '<h1>' . htmlspecialchars($titre) . ' <span>' . htmlspecialchars($texte) . '</span></h1>';
                                        echo '<div class="footerCard">';
                                            echo '<h2>voir le projet</h2>';
                                            if ($figmalink != null){
                                                echo '<a class="boutonFigma" href="' . ($figmalink) . '"><img src="../images/Projets/caroussel/figma.svg"></a>';
                                            } else {
                                                echo '<a class="boutonFigma" style="display=;display: none;"></a>';
                                            }
                                            if ($githublink != null){
                                                echo '<a class="boutonGithub" href="' . ($githublink) . '"><img src="../images/Projets/caroussel/github.svg"></a>';
                                            } else {
                                                echo '<a class="boutonGithub" style="display=;display: none;"></a>';
                                            }
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

    </section>

</boby>
</html>