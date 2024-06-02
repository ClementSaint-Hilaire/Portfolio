document.addEventListener('DOMContentLoaded', function() {
    var img = document.querySelector('.titre_container svg');
    var text = document.querySelector('.text_container');
    img.classList.add('active');
    text.classList.add('active');
  });
  


  document.addEventListener('DOMContentLoaded', function() {
    var links = document.querySelectorAll('.navbar_container a');

    links.forEach(function(link) {
        link.addEventListener('click', function(e) {
            e.preventDefault(); // Empêcher le comportement par défaut du lien

            var targetId = this.getAttribute('href').substring(1); // Supprimer le caractère '#' du début

            var targetElement = document.getElementById(targetId);

            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    });
});
