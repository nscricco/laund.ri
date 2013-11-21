
$(document).on('page:load', function() {
	$('.orderbuttons').find('input').on('click', function(e) {
		var self = this
		e.preventDefault()
		var route = $(e.target).closest('form').attr('action')
		$.ajax({
			type: "get",
			url: route
		}).done(function(response){
			$(self).removeClass('btn-default').addClass('btn-success')
		}).fail(function(response){
			$(self).removeClass('btn-default').addClass('btn-danger')
		})
	})
})