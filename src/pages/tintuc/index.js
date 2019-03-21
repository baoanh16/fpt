var swiper = new Swiper('.slide-1 .swiper-container', {
    slidesPerView: 3,
    spaceBetween: 30,
    loop: true,
    speed: 2000,
    autoplay: {
        delay: 2500,
        disableOnInteraction: false,
    },
    navigation: {
        nextEl: '.slide-1 .lnr-chevron-right',
        prevEl: '.slide-1 .lnr-chevron-left',
    },
});
$('.slide-1 [data-fancybox]').fancybox();