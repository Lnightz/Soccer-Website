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
// $(".site-slider-two")
//     .not(".slick-intialized")
//     .slick({
//         prevArrow :".site-slider-two .slider-btn .prev",
//         nextArrow :".site-slider-two .slider-btn .next",
//         slidesToShow: 3,
//         slidesToScroll: 1,
//     });