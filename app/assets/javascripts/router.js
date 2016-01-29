App.Router.map(function() {
  this.resource('users', { path: '/' }, function(){
    this.resource('user', { path: '/users/:id'}, function() {
      this.route('edit');
    });
  })
})


App.Router.reopen({
  location: 'auto',
  rootURL: '/'
})
