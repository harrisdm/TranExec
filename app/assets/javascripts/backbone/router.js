var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'clients',
    'timeslots': 'timeSlots'
  },

  clients: function() {
    var clients = new app.Collections.Clients();
    clients.fetch().done(function() {
      var clientListView = new app.Views.ClientListView({ collection: clients });
      clientListView.render();
    });
  },

  timeSlots: function() {
    console.log('show time slots');
  }
});