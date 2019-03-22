var swiper = new Swiper('.tintuc-ct-1 .swiper-container', {
    slidesPerView: 3,
    spaceBetween: 30,
    loop: true,
    speed: 2000,
    autoplay: {
        delay: 2000,
        disableOnInteraction: false,
    },
    breakpoints: {
        640: {
            slidesPerView: 2
        }
    }
});