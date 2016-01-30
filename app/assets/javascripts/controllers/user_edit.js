App.UserEditController = Ember.Controller.extend({
  actions: {

    saveChanges: function() {
      var self = this;
      this.get('model').save().then(function() {
        self.transitionToRoute('user');
      })
    },

    cancel: function() {
      this.get('model').rollback();
      this.transitionToRoute('user');
    },

    delete: function() {
      var self = this;
      this.get('model').destroyRecord().then(function() {
        self.transitionToRoute('users');
      });
    }

  }

})
