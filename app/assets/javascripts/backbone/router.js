var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'showParticipants',
    'appointments': 'showAppointments'
  },

  showParticipants: function() {
    var participants = new app.Collections.Participants();
    participants.fetch().done(function() {
      var participantsView = new app.Views.ParticipantsView({ collection: participants });
      participantsView.render();
    });
  },

  showAppointments: function() {
    var appointmentsView = new app.AppointmentsView();
    appointmentsView.render();
  }
});