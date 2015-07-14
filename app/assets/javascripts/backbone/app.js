var app = app || {};
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
  app.WebSockets.channel = app.WebSockets.dispatcher.subscribe(app.Data.accessCode);
  app.WebSockets.channel.bind('new_booking', function(data) {
    if (app.appointmentsView) {
      app.appointmentsView.render();
    }
  });

  app.router = new app.Router();
  Backbone.history.start();
});