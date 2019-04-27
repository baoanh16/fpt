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
		360: {
			slidesPerView: 1
		}
	}
});

function roundUp(num, precision) {
	precision = Math.pow(10, precision);
	return Math.ceil(num * precision) / precision;
}

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