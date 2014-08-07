window.Quizportal = Ember.Application.create({
	initialize: (container, application) ->
  	$.ajax({
			type: 'GET'
			url: 'api/sessions'
			success: (data) =>
				if data.success == "failure"
					return
				Quizportal.session.set( 'currentUser', data.user )
		})
})

Quizportal.session = Ember.Object.create({
  currentUser: null
  init:  ->
  	$.ajax({
			type: 'GET'
			url: 'api/sessions'
			success: (data) =>
				Quizportal.session.set( 'currentUser', data.user )
		})
})

#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./components
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self
