$(function () {
	$('.fpt-header .toggle-menu').click(function () {
		$(this).toggleClass('open')
		$('.fpt-header .middle-header-menu').toggleClass('open')
	})

	$("body").on("click", "a.ajaxpagerlink", function (e) {
		e.preventDefault();
		let obj = $(this);
		let pageurl = $(this).attr('href');
		if (!pageurl.length) return;

		$.ajax({
			url: pageurl,
			data: {
				isajax: true
			},
			success: function success(data) {
				$('.ajaxresponse .ajaxresponsewrap').append($(data).find('.ajaxresponsewrap').html());
				obj.remove();
			}
		});
		return false;
	});
});