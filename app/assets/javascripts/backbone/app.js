var app = app || {};
app.Data = {};
app.WebSockets = {};

_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,
  interpolate : /\{\{([\s\S]+?)\}\}/g
};

$(document).ready(function() {
  if ($('#app').length == 0) {
    return;
  }

  app.WebSockets.dispatcher = new WebSocketRails(window.location.host + '/websocket');
  app.WebSockets.channel = app.WebSockets.dispatcher.subscribe('ABC123');
  app.WebSockets.channel.bind('new_booking', function(data) {
    // This event will be triggered every time a new booking for
    // appointment block ABC123 is registered on the server.
  });

  app.router = new app.Router();
  Backbone.history.start();
});