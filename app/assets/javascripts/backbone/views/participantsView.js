var app = app || {};
app.Views = app.Views || {};

app.Views.ParticipantsView = Backbone.View.extend({
  el: '#app',

  render: function() {
    var template = $('#participantsTemplate').html();
    this.$el.html(template);

    var that = this;
    this.collection.each(function(participant) {
      var participantView = new app.Views.ParticipantView({ model: participant });
      participantView.render(that.$el);
    });

  }
});