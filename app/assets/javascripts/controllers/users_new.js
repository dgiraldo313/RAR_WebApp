App.UsersNewController = Ember.Controller.extend({

  actions: {
    createUser: function() {
      var self = this;
      var fields= this.get('fields'); // get fields with user input to verify its validity below

      //validation
      if(App.User.valid(fields)){
        var user = this.store.createRecord('user', this.get('fields'));
        user.save().then(function() {
          self.transitionToRoute('user', user);
        });
      }
      else {
        this.set('showError', true);
      }
    }


  }

})
