$(document).ready(function () {
	$('.form-tabs').tabslet({
		active: 1,
		animation: true
	});

	$(".search-box").each(function () {

		$(this).keyup(function (event) {
			event.preventDefault()
			if (event.keyCode === 13) {
				$(".ajaxsearchbutton").trigger('click');
			}
		})
	})
});