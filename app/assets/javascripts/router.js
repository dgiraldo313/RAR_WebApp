App.Router.map(function() {
  this.resource('users', { path: '/' })
})

App.Router.reopen({
  location: 'auto',
  rootURL: '/'
})
