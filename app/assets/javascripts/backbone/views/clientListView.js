var app = app || {};
app.Views = app.Views || {};

app.Views.ClientListView = Backbone.View.extend({
  el: '#app',

  render: function() {
    var template = $('#clientListTemplate').html();
    this.$el.html(template);

    var that = this;
    this.collection.each(function(client) {
      var clientView = new app.Views.ClientView({ model: client });
      clientView.render(that.$el);
    });

  }
});