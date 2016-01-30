App.UsersNewRoute = Ember.Route.extend({

  setupController: function(controller) {
    controller.set('fields', {});// empty javascript object which will hold the fields to be saved.

    controller.set('showError', false);

  }

});
