function toggleTabsWrapper() {
	var tabs = $('.FAQs .tabs')
	var allTabsWrapper = $('.FAQs .tabs-wrapper')
	tabs.on('click', function () {
		var textOfTabs = $(this).text()
		var wrapOfThisTabs = $(this).attr('wrap')
		tabs.removeClass('active')
		$(this).addClass('active') // this of tabs
		$('.FAQs .title').text(textOfTabs)
		allTabsWrapper.each(function () {
			$(this).removeClass('active') // this of allTabsWrapper
			if ($(this).attr('wrap') === wrapOfThisTabs) { // this of allTabsWrapper
				$(this).addClass('active')
			}
		})
	})
}

function toggleTabsItem() {
	$('body').on('click', '.FAQs .tabs-title', function () {
		var _this = $(this)
		$(this).addClass('active')
		$(this).parent().siblings().children('.tabs-content').slideUp()
		$(this).parent().siblings().children('.tabs-title').removeClass('active')
		$(this).next().slideDown(function () {
			$('body, html').animate({
				scrollTop: _this.offset().top - _this.height() - 17
			})
		});

	})
}

$(document).ready(function () {
	// toggleTabsWrapper()
	toggleTabsItem()
});