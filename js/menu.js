document.addEventListener('DOMContentLoaded', function() {
    var menuButtonSvg = document.querySelector('.menu svg');
    var menuButton = document.querySelector('.menu');
    var closeButton = document.querySelector('.close');
    var navbar = document.querySelector('.navbar_container');
    var contentR = document.querySelector('.content_right');
    var contentL = document.querySelector('.content_left');
    var navbar_container = document.querySelector('.navbar_container');

    menuButton.addEventListener('click', function() {
        navbar.classList.add('navbar_mobile');
        contentL.classList.remove('content_left');
        contentL.classList.add('content_left_mobile');
        var content_left_mobile = document.querySelector('.content_left_mobile');

        contentR.style.display = 'flex';
        menuButton.style.display = 'none';
        menuButtonSvg.style.display = 'none';
        closeButton.style.display = 'flex';
        navbar_container.style.justifyContent = 'space-around';

        content_left_mobile.addEventListener('click', function() {    
            closeButton.click();
        });
    });

    closeButton.addEventListener('click', function() {
        navbar.classList.remove('navbar_mobile');
        contentR.classList.remove('content_right_mobile');
        contentL.classList.remove('content_left_mobile');
        contentL.classList.add('content_left');


        closeButton.style.display = 'none';
        menuButton.style.display = 'flex';
        menuButtonSvg.style.display = 'flex';
        navbar_container.style.justifyContent = 'end';
    });

   
});

document.getElementById('topButton').addEventListener('click', function() {
    window.scrollTo({
        top: 0
    });
});