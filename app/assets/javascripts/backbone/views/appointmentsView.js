var app = app || {};

app.AppointmentsView = Backbone.View.extend({
  el: '#app',

  render: function() {
    var viewTemplate = $('#appointmentsTemplate').html();
    this.$el.html(viewTemplate);
  }
});