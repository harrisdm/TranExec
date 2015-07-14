var app = app || {};
app.Views = app.Views || {};

app.Views.ParticipantView = Backbone.View.extend({
  tagName: 'a',
  className: "list-group-item",

  events: {
    'click': 'showAppointments'
  },

  render: function(parentView) {
    var viewTemplate = $('#participantTemplate').html();
    var viewHTML = _.template(viewTemplate);

    var listItem = this.$el.append( viewHTML(this.model.toJSON()) );
    parentView.append(listItem);
  },

  showAppointments: function() {
    app.Data.clientID = this.model.get('id');
    app.router.navigate('appointments', true);
  }
});