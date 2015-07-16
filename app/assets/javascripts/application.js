// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore-min
//= require backbone-min
//= require bootstrap.min
//= require moment.js
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree .
//= require websocket_rails/main


var onClickRemoveLink = function(){
  $('.remove_link').on("click", function(){
    $(this).prev("input[type=hidden]").val(1);
    $(this).parent(".fields").hide();
  });
};


$(document).ready(function() {


  onClickRemoveLink();
    

  $('.add_link').on("click", function(){
    var new_fields = $(this).data("fields");
    var new_id = new Date().getTime();
    new_fields = new_fields.replace(/new_coaching_sessions/g, new_id);
    
    $(".dynamic-fields").append($(new_fields));
    $(".dynamic-fields").children().last().children().removeClass("field_with_errors");
    onClickRemoveLink();
  });



});







