<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/contact.css">  
    <title>csh</title>
</head>
<body>

    <?php include 'composants/header.html'; ?>

    <section class="titre">
        <div class="titreEtSousTitre">
            <h1><span>Entrons </span>en contact</h1>
            <h2>PAR MAIL OU SUR MES RÉSEAUX SOCIAUX.</h2>
        </div>
    </section>

    <section class="contact">
        <div class="formulaireDeContact">
            <div class="formulaireDeContactHead">
                <div class="feurouge"></div>
                <div class="feuorange"></div>
                <div class="feuvert"></div>
                <h1>Nouveau message</h1>
            </div>
            <div class="formulaireDeContactInfo">
                <div class="formulaireDeContactInfoContainer">
                    <div class="formulaireDeContactInfoEmail">
                        <h1>Email :</h1>
                        <input type="text" placeholder="Entrez votre adresse mail">
                    </div>
                    <span class="ligne"></span>
                    <div class="formulaireDeContactInfoNom">
                        <h1>Nom :</h1>
                        <input type="text" placeholder="Entrez votre nom">
                    </div>
                    <span class="ligne"></span>
                    <div class="formulaireDeContactInfoSujet">
                        <h1>Sujet :</h1>
                        <input type="text" placeholder="Entrez le sujet de votre mail">
                    </div>
                </div>
            </div>
            <div class="formulaireDeContactMessage">
                <div class="formulaireDeContactMessageBox">
                    <textarea placeholder="Entrez votre message..."></textarea>
                </div>
            </div>
            <a href="" class="boutonEnvoyer">Envoyer</a>
        </div>
        <div class="resauxSociaux">
            <a href="#"><img src="" alt=""></a>
            <a href="#"><img src="" alt=""></a>
            <a href="#"><img src="" alt=""></a>
            <a href="#"><img src="" alt=""></a>
            <a href="#"><img src="" alt=""></a>
        </div>


    </section>

    <?php include 'composants/footer.html'; ?>

</body>
</html>