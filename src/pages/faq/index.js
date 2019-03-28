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
    var tabsItem = $('.FAQs .tabs-item')
    tabsItem.on('click', function () {
        tabsItem.removeClass('active')
        $(this).addClass('active') // this of tabsItem
    })
}

$(document).ready(function () {
    // toggleTabsWrapper()
    toggleTabsItem()
});