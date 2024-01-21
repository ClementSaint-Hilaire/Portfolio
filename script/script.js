class Carousel {

    constructor (element, options = {}) {
        console.log('hello')
    }
}

document.addEventListener('DOMContentLoaded', function () {
    new Carousel(document.querySelector('.xpCard'), {
        slidesToScroll: 1,
        slidesVisible: 2
    })
})

