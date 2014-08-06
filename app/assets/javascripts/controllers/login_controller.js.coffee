# for more details see: http://emberjs.com/guides/controllers/

Quizportal.LoginController = Ember.Controller.extend(
  email: "Hello"
  password: null
  actions:
    submit: ->
      email = @get("email")
      password = @get("password")
      console.log email, password
      data = { email: email, password: password }
      $.ajax({
      	type: 'POST'
      	url: 'api/sessions'
      	data: data
      	success: (data) ->
      		console.log( "Sanity check" )
      		console.log( data )
      })
)


