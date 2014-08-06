# for more details see: http://emberjs.com/guides/controllers/

Quizportal.RegisterController = Ember.Controller.extend({
	actions:
		submit: ->
			name = @get("name")
			email = @get("email")
			password = @get("password")
			password_confirmation = @get("password_confirmation")
			console.log name, email, password, password_confirmation
			data = { user: { name: name, email: email, password: password, password_confirmation: password_confirmation } }
			$.ajax({
				type: 'POST'
				url: 'api/users'
				data: data
				success: (data) ->
					console.log( data )
			})
})

