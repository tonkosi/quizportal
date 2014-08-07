# for more details see: http://emberjs.com/guides/controllers/
Quizportal.LoginController = Ember.Controller.extend(
#  currentUser: Ember.computed.alias("Quizportal.currentUser")
  needs: 'application'
  email: "mihael.liskij@gmail.com"
  password: "test1234"
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
      	success: (data) =>
      		Quizportal.session.set( 'currentUser', data.user )
      		@transitionToRoute("index")
      })
)