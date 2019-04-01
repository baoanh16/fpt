var siteRoot = "";
var cates;




$(document).ready(function () {
	$('#tags').select2({
		width: "100%",
		ajax: {
			url: siteRoot + "/News/Services/NewsService.aspx",
			type: 'post',
			data: {
				'method': 'GetTag'
			},
			delay: 250,
			processResults: function (data) {
				// Tranforms the top-level key of the response object from 'items' to 'results'
				return {
					results: data.data
				};
			}

		},
	});
	loadEvent();
});

$('#tags').on("change", function (e) {
	$('#calendar').fullCalendar('destroy')
	loadEvent();
});


function loadEvent() {
	var id = '';
	var spec = "";
	$.each($('#tags').val(), function (index, value) {
		id += spec + value;
		spec = "@@";
	});

	$.ajax({
		url: siteRoot + "/News/Services/NewsService.aspx",
		type: "post",
		data: {
			'method': 'GetNewByTag',
			'tag': id
		},
		success: function (response) {
			//if request if made successfully then the response represent the data
			console.log(response.data);
			CovertToDTOCalendar(response.data);
		}
	});
}

function loadCanlendar(datas) {
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
		events: datas,
		eventClick: function (event) {
			if (event.url) {
				window.open(event.url);
				return false;
			}
		}
	});
}

function CovertToDTOCalendar(datas) {
	var eventFPT = [];
	$.each(datas, function (i, v) {
		let event = {
			title: v.Title,
			start: moment(v.SubTitle, "DD-MM-YYYY").format().split("T")[0],
			end: moment(v.FileAttachment, "DD-MM-YYYY").format().split("T")[0],
			url: v.Url.replace('~/', '/'),
			description: v.Description
		}
		eventFPT.push(event);
	});
	loadCanlendar(eventFPT);
}


function formatDate(date) {
	var d = new Date(),
		month = '' + (d.getMonth() + 1),
		day = '' + d.getDate(),
		year = d.getFullYear();
	if (month.length < 2) month = '0' + month;
	if (day.length < 2) day = '0' + day;
	return [year, month, day].join('-');
}