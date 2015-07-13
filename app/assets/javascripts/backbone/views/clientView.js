var app = app || {};
app.Views = app.Views || {};

app.Views.ClientView = Backbone.View.extend({
  tagName: 'a',
  className: "list-group-item",

  events: {
    'click': 'clickFunction'
  },

  render: function(parentView) {
    var viewTemplate = $('#clientTemplate').html();
    var viewHTML = _.template(viewTemplate);

    var listItem = this.$el.append( viewHTML(this.model.toJSON()) );
    parentView.append(listItem);
  },

  clickFunction: function() {
    console.log('Clicked', this.model.get('name'));
  }
});