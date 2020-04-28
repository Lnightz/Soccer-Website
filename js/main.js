/** First Slider */
$(".slider-one")
    .not(".slick-intialized")
    .slick({
        dots: true,
        autoplay: true,
        autoplaySpeed: 2000,
        prevArrow :".site-slider .slider-btn .prev",
        nextArrow :".site-slider .slider-btn .next",
        
    });

/** Second Slider */

$('.hot-class-wrapper')
.slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    prevArrow: ".hot-class-slider .slider-btn .prev",
    nextArrow: ".hot-class-slider .slider-btn .next",
});

      

