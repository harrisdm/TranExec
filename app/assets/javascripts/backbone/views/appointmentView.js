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
    data.datetime_nice = day.format('h:mm a');

    var view = this.$el.append( viewHTML(data) );
    parentView.find('.appointmentList').append(view);
  },

  bookAppointment: function() {
    if (this.model.get('participant_id')) {
      return;
    }

    this.model.set('participant_id', app.Data.participantID);
    this.model.set('phone', app.Data.phone);
    this.model.set('email', app.Data.email);
    this.model.set('reminder', app.Data.reminder);

    this.markAsPending();
    this.model.save().done(function() {
      app.WebSockets.channel.trigger('new_booking');
    });
  },

  markAsPending: function() {
    var label = $('<span class="label label-warning">Pending</span>');
    this.$el.append(label);
  }
});