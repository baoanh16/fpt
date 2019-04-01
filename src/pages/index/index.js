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
		768: {
			slidesPerView: 2
		},
		576: {
			slidesPerView: 1
		}
	}
});