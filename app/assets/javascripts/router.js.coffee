# For more information see: http://emberjs.com/guides/routing/

Quizportal.Router.reopen({
  location: 'history'
});

Quizportal.Router.map ->
  @route "about",
    path: "/about"
  @route "logout"
  @route "register"
  @route "user"

  return
