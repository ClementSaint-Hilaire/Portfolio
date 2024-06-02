document.addEventListener('DOMContentLoaded', function() {
    var contactForm = document.getElementById('contactForm');
    var message_send = document.querySelector('.message_send');

    contactForm.addEventListener('submit', function(event) {
        var email = document.getElementById('email').value.trim();
        var nom = document.getElementById('nom').value.trim();
        var sujet = document.getElementById('sujet').value.trim();
        var message = document.getElementById('message').value.trim();

        if (email !== '' && nom !== '' && sujet !== '' && message !== '') {
            message_send.style.display = 'flex';
            event.preventDefault(); // Empêche l'envoi du formulaire
        } else {
            // Afficher un message d'erreur ou d'incitation à remplir tous les champs si nécessaire
        }
    });
});