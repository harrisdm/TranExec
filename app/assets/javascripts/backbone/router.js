var app = app || {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'participants',
    'timeslots': 'timeSlots'
  },

  participants: function() {
    var participants = new app.Collections.Participants();
    participants.fetch().done(function() {
      var participantsView = new app.Views.ParticipantsView({ collection: participants });
      participantsView.render();
    });
  },

  timeSlots: function() {
    console.log('show time slots');
  }
});