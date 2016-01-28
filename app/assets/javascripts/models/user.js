App.User = DS.Model.extend({
  firstName: DS.attr('string'),
  lastName: DS.attr('string'),
  email: DS.attr('string'),
  phone: DS.attr('string'),
  role: DS.attr('string'),

  fullName: function() {
    return this.get('firstName') + ' ' + this.get('lastName')
  }.property('firstName', 'lastName'),

  isAdmin: function(){
    if(this.get('role')==="admin"){
      return true;
    }else{
      return false;
    }
  }.property('role')


})

//DSModel gives you a variety of useful methods and properties
  // such as:
  // model.save() // save changes to the database
  // model.rollback() // wipe clean any unsaved changes
  // model.destroyRecord() // delete a record from the database
