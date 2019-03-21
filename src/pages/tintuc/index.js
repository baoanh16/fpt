var swiper = new Swiper('.slide-1 .swiper-container', {
    slidesPerView: 3,
    spaceBetween: 30,
    loop: true,
    speed: 2000,
    autoplay: {
        delay: 2000,
        disableOnInteraction: false,
    },
    navigation: {
        nextEl: '.slide-1 .lnr-chevron-right',
        prevEl: '.slide-1 .lnr-chevron-left',
    },
    breakpoints: {
        640: {
            slidesPerView: 2
        },
        320: {
            slidesPerView: 1
        }
    }
});


$('.slide-1 [data-fancybox]').fancybox();


var swiper = new Swiper('.tintuc-2 .swiper-container', {
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
        },
        320: {
            slidesPerView: 1
        }
    }
});