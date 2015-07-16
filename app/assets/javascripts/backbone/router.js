var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'showParticipants',
    'details': 'showDetails',
    'appointments': 'showAppointments'
  },

  showParticipants: function() {
    var participants = new app.Collections.Participants();
    participants.fetch().done(function() {
      var participantsView = new app.Views.ParticipantsView({ collection: participants });
      participantsView.render();
    });
  },

  showDetails: function() {
    var detailsView = new app.Views.DetailsView();
    detailsView.render();
  },

  showAppointments: function() {
    app.appointments = new app.Collections.Appointments();
    app.appointments.fetch().done(function() {
      var appointmentsView = new app.Views.AppointmentsView({ collection: app.appointments });
      appointmentsView.render();
    });
  }
});