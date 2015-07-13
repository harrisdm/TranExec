var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'clients'
  },

  clients: function() {
    var clients = new app.Clients();
    clients.fetch().done(function() {
      var clientListView = new app.ClientListView({ collection: clients });
      clientListView.render();
    });
  }
});