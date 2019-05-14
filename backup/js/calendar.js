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
        right: 'month,agendaWeek,agendaDay'
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
                at: 'top right'
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