var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentGroupView = Backbone.View.extend({
  render: function(parentView) {
    var viewTemplate = $('#appointmentGroupTemplate').html();
    var viewHTML = _.template(viewTemplate);

    var groupHeader = this.groupHeader();
    this.$el.html( viewHTML({ groupHeader: groupHeader }) );
    parentView.append(this.$el);

    var that = this;
    this.collection.each(function(appointment) {
      var appointmentView = new app.Views.AppointmentView({ model: appointment });
      appointmentView.render(that.$el);
    });
  },

  groupHeader: function() {
    var datetime = this.collection.first().get('datetime');
    var day = moment(datetime);
    return day.format('dddd Do MMMM');
  }
});