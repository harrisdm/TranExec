var app = app || {};
app.Views = app.Views || {};

app.Views.AppointmentView = Backbone.View.extend({
  tagName: 'a',
  className: "list-group-item",

  render: function(parentView) {
    var viewTemplate = $('#appointmentTemplate').html();
    var viewHTML = _.template(viewTemplate);

    var view = this.$el.append( viewHTML(this.model.toJSON()) );
    parentView.append(view);
  },
});