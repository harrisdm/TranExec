var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentsView = Backbone.View.extend({
  el: '#app',

  events: {
    'click button': 'showParticipants'
  },

  initialize: function() {
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function() {
    var viewTemplate = $('#appointmentsTemplate').html();
    this.$el.html(viewTemplate);

    var uniqueDates = this.uniqueDates();

    var that = this;
    _(uniqueDates).each(function(date) {
      var appointments = that.appointmentsWithDate(date);
      var appointmentGroupView = new app.Views.AppointmentGroupView({ collection: appointments });
      appointmentGroupView.render(that.$el);
    });
  },

  showParticipants: function() {
    app.router.navigate('', true);
  },

  uniqueDates: function() {
    var dates = this.collection.map(function(appointment) {
      var datetime = appointment.get('datetime');
      var day = moment(datetime);
      return day.format('YYYY-MM-DD');
    });

    return _(dates).uniq();
  },

  appointmentsWithDate: function(date) {
    var models = this.collection.filter(function(appointment) {
      var datetime = appointment.get('datetime');
      var idx = datetime.indexOf(date);
      return idx === 0;
    });

    return new app.Collections.Appointments(models);
  }
});