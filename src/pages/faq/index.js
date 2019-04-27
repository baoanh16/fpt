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
		$(this).toggleClass('active')
		$(this).next().toggle()
		if ($(window).width() < 576) {
			$(this).parent().siblings().children('.tabs-content').hide()
		}
	})
}

$(document).ready(function () {
	// toggleTabsWrapper()
	toggleTabsItem()
});