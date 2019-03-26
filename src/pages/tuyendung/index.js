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