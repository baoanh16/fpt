function roundUp(num, precision) {
	precision = Math.pow(10, precision);
	return Math.ceil(num * precision) / precision;
}

if ($('.fpt-daotao-ct2').length > 0) {
	var scroll = false;
	$(window).on('scroll', function () {
		if (scroll == false) {

			if ($(window).scrollTop() > $('.fpt-daotao-ct2').offset().top - $(window).height())
				$('.animated').scrollClass({
					delay: 300
				});
			$('.fpt-daotao-ct2 .reason-item .content span:first-child').each(function () {
				$(this).prop('Counter', 0).animate({
					Counter: $(this).text()
				}, {
						duration: 5000,
						easing: 'swing',
						step: function (now) {
							// $(this).text(Math.ceil(now));
							$(this).text(roundUp(now, 1));
							// $(this).text(Math.round10(now, -1));
						}
					});
			});
		}
		scroll = true;
	});
}
$(document).ready(function () {


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
		},
		on: {
			init: function () {
				$('.small-slider .swiper-slide-thumb-active').next().trigger('click')
			},
		}
	});


	var bigCampusSwiper = new Swiper('.fpt-tuyensinh-campus .big-slider .swiper-container', {
		speed: 2100,
		spaceBetween: 50,
		loop: true,
		autoplay: {
			delay: 3500
		},
		navigation: {
			nextEl: '.big-slider .swiper-next',
			prevEl: '.big-slider .swiper-prev'
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
		autoplay: {
			delay: 500
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
			360: {
				slidesPerView: 1
			}
		}
	})
});