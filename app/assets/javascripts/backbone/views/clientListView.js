var app = app || {};

app.ClientListView = Backbone.View.extend({
  el: '#app',

  render: function() {
    var template = $('#clientListTemplate').html();
    this.$el.html(template);
  }
});