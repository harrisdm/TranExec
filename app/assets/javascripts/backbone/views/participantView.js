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

    var view = this.$el.append( viewHTML(this.model.toJSON()) );
    parentView.find('#participantList').append(view);
  },

  showAppointments: function() {
    app.Data.participantID = this.model.get('id');
    app.router.navigate('details', true);
  }
});