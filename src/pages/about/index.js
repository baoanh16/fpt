$(document).ready(function () {

	let sectionHeight = $('.fpt-about').offset().top
	var elements = document.querySelectorAll('.statistic-number .number');
	Array.prototype.forEach.call(elements, function (el, i) {
		let max = el.getAttribute("data-count")
		let counter = new Counter(el, 0, max, {
			autostart: true,
			duration: 5,
			separator: '.'
		});
	});


});