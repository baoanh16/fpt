var mySwiper = new Swiper('.fpt-event-1 .swiper-container', {
	speed: 400,
	slidesPerView: 4,
	spaceBetween: 30,
	loop: true,
	autoplay: {
		delay: 4000
	},
	navigation: {
		nextEl: '.fpt-event-1 .swiper-next',
		prevEl: '.fpt-event-1 .swiper-prev',
	},
	breakpoints: {
		992: {
			slidesPerView: 3
		},
		768: {
			slidesPerView: 2
		},
		480: {
			slidesPerView: 1.5,
		},
		375: {
			slidesPerView: 1
		}
	}
});