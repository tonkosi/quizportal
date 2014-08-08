# for more details see: http://emberjs.com/guides/controllers/

Quizportal.IndexController = Ember.Controller.extend({
	actions:
		showRegistrationForm: ->
			form = $( "#registrationForm" ) 
			carousel = $( "#previewCarousel")
			#form.hide()
			form.slideDown()
			carousel.slideUp()
			console.log( "slideDown" )
			console.log( form )
})

