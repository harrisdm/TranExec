var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentGroupView = Backbone.View.extend({


  render: function(parentView) {
    var viewTemplate = $('#appointmentGroupTemplate').html();
    var viewHTML = _.template(viewTemplate);

    var groupHeader = this.groupHeader();
    parentView.append(viewHTML({ groupHeader: groupHeader }));
  },

  groupHeader: function() {
    var datetime = this.collection[0].get('datetime');
    var day = moment(datetime);
    return day.format('dddd Do MMMM');
  }
});