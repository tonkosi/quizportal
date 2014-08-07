# for more details see: http://emberjs.com/guides/controllers/

Quizportal.ApplicationController = Ember.Controller.extend({
  testVal: "nesto"
  currentUserBinding: 'Quizportal.session.currentUser'
  actions:
  	logout: ->
  		$.ajax({
  			type: 'DELETE'
  			url: 'api/sessions'
  			success: =>
  				Quizportal.session.set( 'currentUser', null )
  		})
})

