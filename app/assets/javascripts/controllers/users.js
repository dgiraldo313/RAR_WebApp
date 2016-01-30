// Ember expects you to do this because ArrayController defines certain things
// like sortProperties that are not available on regular Controller instances.
App.UsersController = Ember.ArrayController.extend({
  sortProperties: ['firstName', 'lastName'], //sortProperties takes an array of strings. These strings are the properties you want to sort by with the highest priority first.
  users: function() {
    return this.get('search') ? this.get('searchedUsers') : this
  }.property('search', 'searchedUsers'),

  searchedUsers: function() {
    var search = this.get('search').toLowerCase()
    return this.filter(function(user) {
      return user.get('fullName').toLowerCase().indexOf(search) != -1
    })
  }.property('search', 'this.@each.fullName')
})
