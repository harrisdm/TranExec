var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentView = Backbone.View.extend({
  tagName: 'a',
  className: "list-group-item",

  events: {
    'click': 'bookAppointment'
  },

  render: function(parentView) {
    var viewTemplate = $('#appointmentTemplate').html();
    var viewHTML = _.template(viewTemplate);

    var data = this.model.toJSON();
    var day = moment(data.datetime);
    data.datetime_nice = day.format('MMMM Do YYYY, h:mm:ss a');

    var view = this.$el.append( viewHTML(data) );
    parentView.append(view);
  },

  bookAppointment: function() {
    app.WebSockets.channel.trigger('new_booking');
  }
});