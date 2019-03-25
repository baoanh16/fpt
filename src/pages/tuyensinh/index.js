var smallCampusSwiper = new Swiper('.fpt-tuyensinh-campus .small-slider .swiper-container', {
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

var bigCampusSwiper = new Swiper('.fpt-tuyensinh-campus .big-slider .swiper-container', {
	speed: 2100,
	spaceBetween: 50,
	loop: true,
	autoplay: {
		delay: 3500
	},
	thumbs: {
		swiper: smallCampusSwiper
	}
});

var khongGianSwiper = new Swiper('.fpt-tuyensinh-khonggian .swiper-container', {
	slidesPerView: 3,
	spaceBetween: 30,
	speed: 2100,
	navigation: {
		nextEl: '.fpt-tuyensinh-khonggian .swiper-next',
		prevEl: '.fpt-tuyensinh-khonggian .swiper-prev',
	},
	breakpoints: {
		768: {
			slidesPerView: 2
		},
		480: {
			slidesPerView: 1
		}
	}
})
var doiTacSwiper = new Swiper('.fpt-tuyensinh-doitac .swiper-container', {
	slidesPerView: 5,
	spaceBetween: 15,
	loop: true,
	speed: 2100,
	navigation: {
		nextEl: '.fpt-tuyensinh-doitac .swiper-next',
		prevEl: '.fpt-tuyensinh-doitac .swiper-prev',
	},
	breakpoints: {
		1200: {
			slidesPerView: 4
		},
		992: {
			slidesPerView: 3
		},
		576: {
			slidesPerView: 2
		},
		420: {
			slidesPerView: 1
		}
	}
})