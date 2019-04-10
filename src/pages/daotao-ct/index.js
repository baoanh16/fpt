function roundUp(num, precision) {
	precision = Math.pow(10, precision);
	return Math.ceil(num * precision) / precision;
}

$('.fpt-daotao-ct2 .reason-item .content span:first-child').each(function () {
    $(this).prop('Counter',0).animate({
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