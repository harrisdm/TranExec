var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'clients',
    'timeslots': 'timeSlots'
  },

  clients: function() {
    var participants = new app.Collections.Participants();
    participants.fetch().done(function() {
      var participantListView = new app.Views.ParticipantListView({ collection: participants });
      participantListView.render();
    });
  },

  timeSlots: function() {
    console.log('show time slots');
  }
});