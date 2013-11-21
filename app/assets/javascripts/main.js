
$(document).on('page:load', function() {
	$('.orderbuttons').find('input').on('click', function(e) {
		conole.log('hello')
		var self = this;
		e.preventDefault();
		var route = $(e.target).closest('form').attr('action');
		var rtype = $(e.target).closest('form').attr('value');
		alert('hello');
		$.ajax({
			type: "post",
			url: route,
			data: { confirming: rtype }
		}).done(function(response){
			console.log('test')
			$(self).removeClass('btn-default').addClass('btn-success')
		}).fail(function(response){
			$(self).removeClass('btn-default').addClass('btn-danger')
		})
	})
})