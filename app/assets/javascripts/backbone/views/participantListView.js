var app = app || {};
app.Views = app.Views || {};

app.Views.ParticipantListView = Backbone.View.extend({
  el: '#app',

  render: function() {
    var template = $('#participantListTemplate').html();
    this.$el.html(template);

    var that = this;
    this.collection.each(function(participant) {
      var participantView = new app.Views.ParticipantView({ model: participant });
      participantView.render(that.$el);
    });

  }
});