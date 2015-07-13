var app = app || {};

app.Appointments = Backbone.Collection.extend({
  model: app.Appointment
});