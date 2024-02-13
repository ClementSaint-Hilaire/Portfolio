  $(document).ready(function(){

    $('.carousselContainer').slick({
        centerMode: true,
        centerPadding: '60px',
        slidesToShow: 2,
        prevArrow: '.boutonL',
        nextArrow: '.boutonR',
        responsive: [
          {
            breakpoint: 768,
            settings: {
              arrows: false,
              centerMode: true,
              centerPadding: '40px',
              slidesToShow: 3
            }
          },
          {
            breakpoint: 480,
            settings: {
              arrows: false,
              centerMode: true,
              centerPadding: '40px',
              slidesToShow: 1
            }
          }
        ]
      });
    

  });