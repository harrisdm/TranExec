var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'clients'
  },

  clients: function() {
    var clientListView = new app.ClientListView({ collection: app.Clients });
    clientListView.render();
  }
});