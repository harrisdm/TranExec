var app = app || {};
app.Collections = app.Collections || {};

app.Collections.Appointments = Backbone.Collection.extend({
  model: app.Appointment
});