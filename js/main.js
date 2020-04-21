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