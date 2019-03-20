$(function () {
	$('.fpt-header .toggle-menu').click(function () {
		$(this).toggleClass('open')
		$('.fpt-header .middle-header-menu').toggleClass('open')
	})
});