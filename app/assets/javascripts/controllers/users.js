// Ember expects you to do this because ArrayController defines certain things
// like sortProperties that are not available on regular Controller instances.
App.UsersController = Ember.ArrayController.extend({
  sortProperties: ['firstName', 'lastName'] //sortProperties takes an array of strings. These strings are the properties you want to sort by with the highest priority first.

})
