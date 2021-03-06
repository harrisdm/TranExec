var app = app || {};
app.Views = app.Views || {};

app.Views.ParticipantsView = Backbone.View.extend({
  el: '#app',

  events: {
    'click #homeBtn': 'showHomePage'
  },

  render: function() {
    var viewTemplate = $('#participantsTemplate').html();
    var viewHTML = _.template(viewTemplate);
    this.$el.html( viewHTML({ participants: this.collection.length }) );

    var that = this;
    this.collection.each(function(participant) {
      var participantView = new app.Views.ParticipantView({ model: participant });
      participantView.render(that.$el);
    });
  },

  showHomePage: function() {
    window.location.href = window.location.origin;
  }
});