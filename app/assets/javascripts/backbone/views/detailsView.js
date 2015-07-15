var app = app || {};
app.Views = app.Views || {};

app.Views.DetailsView = Backbone.View.extend({
  el: '#app',

  events: {
    'submit form': 'showAppointments'
  },

  render: function() {
    var viewTemplate = $('#detailsTemplate').html();
    var viewHTML = _.template(viewTemplate);
    this.$el.html(viewHTML());
  },

  showAppointments: function(e) {
    e.preventDefault();

    var $form = $(e.currentTarget);
    app.Data.phone = $form.find('#phone').val();
    app.Data.email = $form.find('#email').val();
    app.Data.reminder = $form.find('[name="reminder"]:checked').val();

    app.router.navigate('appointments', true);
  }
});