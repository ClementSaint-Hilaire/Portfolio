
document.addEventListener('DOMContentLoaded', function() {
    var bouton_apps = document.querySelector('.bouton_apps');
    var bouton_my_apps_container = document.querySelector('.bouton_my_apps_container');
    var apps_container = document.querySelector('.apps_container');
    var bouton_apps_close = document.querySelector('.bouton_apps_close');


    bouton_apps.addEventListener('click', function() {
        apps_container.style.display = 'flex';
        bouton_apps.style.display = 'none';
    });

    bouton_apps_close.addEventListener('click', function() {
        apps_container.style.display = 'none';
        bouton_apps.style.display = 'flex';    });
});
