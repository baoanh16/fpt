var homeBannerSwiper = new Swiper('.fpt-banner-home .swiper-container', {
	speed: 2500,
	spaceBetween: 100,
	effect: 'coverflow',
	loop: true,
	autoplay: {
		delay: 5000
	},
	coverflowEffect: {
		rotate: 30,
		slideShadows: false,
	},
	navigation: {
		nextEl: '.fpt-banner-home .swiper-next',
		prevEl: '.fpt-banner-home .swiper-prev',
	},
	pagination: {
		el: '.fpt-banner-home .swiper-pagination',
		type: 'bullets',
		clickable: true
	},
});