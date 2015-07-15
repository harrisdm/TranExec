var app = app || {};
app.Views = app.Views || {};

app.Views.DetailsView = Backbone.View.extend({
  el: '#app',

  events: {
    'click #appointmentsBtn': 'showAppointments'
  },

  render: function() {
    var viewTemplate = $('#detailsTemplate').html();
    var viewHTML = _.template(viewTemplate);
    this.$el.html(viewHTML());
  },

  showAppointments: function() {

    app.router.navigate('appointments', true);
  }
});