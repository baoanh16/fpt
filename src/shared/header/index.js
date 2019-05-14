$(function () {
	$('.fpt-header .toggle-menu').click(function () {
		$(this).toggleClass('open')
		$('.fpt-header .middle-header-menu').toggleClass('open')
	})

	$(".middle-header").sticky({
		topSpacing: 0,
		zIndex: 999
	})

	const top_nav = new MappingListener({
		selector: '.search-wrapper',
		mobileWrapper: ".language",
		mobileMethod: "insertAfter",
		desktopWrapper: ".logo-wrapper",
		desktopMethod: "insertAfter",
		breakpoint: 576,
	}).watch();

	var isLoading = false;
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
				// obj.remove();
				isLoading = false
				obj.parent().remove();
			}
		});
		return false;
	});
	if ($(window).width() < 992) {

		if ($('a.ajaxpagerlink').length) {
			var height = $('footer').height();
			$(window).scroll(function () {
				if ($(window).scrollTop() + $(window).height() >= $(document).height() - height) {
					if (isLoading == false) {
						isLoading = true;
						$('a.ajaxpagerlink').trigger('click');
					}
				}
			});
		}
	}



	$('.has-sub').each(function () {
		if ($(this).hasClass('active')) {
			$(this).children('.sub-menu').slideDown()
		}
	})

	$('.search-toggle').click(function () {
		$('.search-wrapper').slideToggle()
	})

	if ($('.searchinput').val() == '') {
		$('.searchbutton').attr('disabled', true)
	}
	$('.searchinput').change(function () {
		if ($('.searchinput').val() == '') {
			$('.searchbutton').attr('disabled', true)
		} else {
			$('.searchbutton').attr('disabled', false)
		}
	})

	$('.searchresults .form-btn span').click(function () {
		$('.seachpage-btn').trigger('click')
	})

	if ($(window).width() < 1200) {
		$('.has-sub > a').each(function (e) {
			$(this).click(function (e) {
				e.preventDefault();
				$(this).next().slideToggle()
			});
		})
	}


});