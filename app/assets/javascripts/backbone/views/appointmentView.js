var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentView = Backbone.View.extend({
  tagName: 'a',
  className: function () {
    var str = "list-group-item";

    if (this.model.get("participant_id")) {
      str += " disabled";
    }

    return str;
  },

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
    if (this.model.get('participant_id')) {
      return;
    }

    this.model.set('participant_id', app.Data.participantID);
    this.model.save().done(function() {
      app.WebSockets.channel.trigger('new_booking');
    });
  }
});