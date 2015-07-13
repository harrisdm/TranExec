var app = app || {};
app.Data = {};

_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,
  interpolate : /\{\{([\s\S]+?)\}\}/g
};

$(document).ready(function() {
  if ($('#app').length == 0) {
    return;
  }

  app.router = new app.Router();
  Backbone.history.start();
});