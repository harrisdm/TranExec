var app = app || {};
app.Data = {};

_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,
  interpolate : /\{\{([\s\S]+?)\}\}/g
};

$(document).ready(function() {
  app.router = new app.Router();
  Backbone.history.start();
});