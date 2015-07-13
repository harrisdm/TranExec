var app = app || {};

app.Clients = Backbone.Collection.extend({
  model: app.Client,

  url: '/clients'
});