# For more information see: http://emberjs.com/guides/routing/

Quizportal.Router.reopen({
  location: 'history'
});

Quizportal.Router.map ->
  @route "/",
    path: "/index"
  @route "about",
    path: "/about"
  @route "login",
  	path: "/login"
  @route "register"

  return
