var app = app || {};
app.Collections = app.Collections || {};

app.Collections.Clients = Backbone.Collection.extend({
  model: app.Models.Client,

  url: function() {
    return '/backbone/' + app.Data.accessCode + '/participants'
  }
});