var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentsView = Backbone.View.extend({
  el: '#app',

  render: function() {
    var viewTemplate = $('#appointmentsTemplate').html();
    this.$el.html(viewTemplate);
    console.log('rendering view');

    var that = this;
    this.collection.each(function(appointment) {
      var appointmentView = new app.Views.AppointmentView({ model: appointment });
      appointmentView.render(that.$el);
    });
  }
});