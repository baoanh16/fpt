$(document).ready(function () {
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

	$('a[title]').qtip();

	var eventFPT = []
	$('.event-calendar .event-item').each(function () {
		let event = {
			title: $(this).children('.title').text(),
			start: moment($(this).children('.start').text(), "DD-MM-YYYY").format().split("T")[0],
			end: moment($(this).children('.end').text(), "DD-MM-YYYY").format().split("T")[0],
			url: $(this).children('.url').text(),
			description: $(this).children('.description').html()
		}
		eventFPT.push(event)
	})

	$('#calendar').fullCalendar({
		header: {
			left: 'prevYear, prev, title, next, nextYear',
			center: '',
			right: ''
		},
		locale: 'vi',
		eventRender: function (event, element) {
			element.qtip({
				content: {
					title: event.title,
					text: event.description
				},
				show: {
					solo: true
				},
				hide: 'unfocus',
				position: {
					target: 'mouse',
					adjust: {
						mouse: true // Can be omitted (e.g. default behaviour)
					}
				}
			});
		},
		events: eventFPT,
		eventClick: function (event) {
			if (event.url) {
				window.open(event.url);
				return false;
			}
		}
	});

})