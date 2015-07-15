var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentGroupView = Backbone.View.extend({


  render: function(parentView) {
    var viewTemplate = $('#appointmentGroupTemplate').html();
    var viewHTML = _.template(viewTemplate);

    parentView.append(viewHTML());
  }
});