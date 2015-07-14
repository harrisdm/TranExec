var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentsView = Backbone.View.extend({
  el: '#app',

  render: function() {
    var viewTemplate = $('#appointmentsTemplate').html();
    this.$el.html(viewTemplate);
  }
});