var smallCampusSwiper = new Swiper('.fpt-campus .small-slider .swiper-container', {
	speed: 2100,
	spaceBetween: 15,
	slidesPerView: 5,
	breakpoints: {
		992: {
			slidesPerView: 4
		},
		768: {
			slidesPerView: 3
		},
		480: {
			slidesPerView: 2
		}
	}
});

var bigCampusSwiper = new Swiper('.fpt-campus .big-slider .swiper-container', {
	speed: 2100,
	spaceBetween: 50,
	loop: true,
	autoplay: {
		delay: 3500
	},
	thumbs: {
		swiper: smallCampusSwiper
	},
	navigation: {
		nextEl: '.big-slider .swiper-next',
		prevEl: '.big-slider .swiper-prev'
	}
});