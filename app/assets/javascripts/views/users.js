App.UserView = Ember.View.extend({
  classNameBindings: ['admin'],
  admin: Em.computed.alias('controller.model.isAdmin')
})
