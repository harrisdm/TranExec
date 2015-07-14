var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentsView = Backbone.View.extend({
  el: '#app',

  initialize: function() {
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function() {
    var viewTemplate = $('#appointmentsTemplate').html();
    this.$el.html(viewTemplate);
    console.log('rendering appointmentsView');

    var that = this;
    this.collection.each(function(appointment) {
      var appointmentView = new app.Views.AppointmentView({ model: appointment });
      appointmentView.render(that.$el);
    });
  }
});