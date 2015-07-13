var app = app || {};

app.ClientView = Backbone.View.extend({
  el: '#clientList',

  render: function() {
    var viewTemplate = $('#clientTemplate').html();
    var viewHTML = _.template(viewTemplate);

    this.$el.append( viewHTML(this.model.toJSON()) );
  }
});