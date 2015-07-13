var app = app || {};
app.Views = app.Views || {};

app.Views.ClientListView = Backbone.View.extend({
  el: '#app',

  render: function() {
    var template = $('#clientListTemplate').html();
    this.$el.html(template);

    this.collection.each(function(client) {
      var clientView = new app.Views.ClientView({ model: client });
      clientView.render();
    });

  }
});