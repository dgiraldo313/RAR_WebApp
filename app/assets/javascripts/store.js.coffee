DS.RESTAdapter.reopen({
  namespace: 'api/v1'
})
# ^^tell Ember to prepend all API requests with api/v1/

App.ApplicationStore = DS.Store.extend()
App.ApplicationAdapter = DS.ActiveModelAdapter.extend()
