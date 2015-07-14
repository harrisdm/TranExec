var app = app || {};
app.Collections = app.Collections || {};

app.Collections.Participants = Backbone.Collection.extend({
  model: app.Models.Participant,

  url: function() {
    return '/backbone/' + app.Data.accessCode + '/participants'
  }
});