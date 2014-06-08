// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// $('nav li').click(toggleMenu);

// function toggleMenu() {

// }
$(document).ready(function() {


  $("#writer").hide();
  $( '#writer_name').click(function(){
  $("#writer").toggle();
  $("#writer").siblings().hide();
  });

  $("#director").hide();
  $( '#director_name').click(function(){
  $("#director").toggle();
  $("#director").siblings().hide();
  });

  $("#dp").hide();
  $( '#dp_name').click(function(){
  $("#dp").toggle();
  $("#dp").siblings().hide();
  });

  $("#boom").hide();
  $( '#boom_name').click(function(){
  $("#boom").toggle();
  $("#boom").siblings().hide();
  });

  $("#ad").hide();
  $( '#ad_name').click(function(){
  $("#ad").toggle();
  $("#ad").siblings().hide();
  });

  $("#pa").hide();
  $( '#pa_name').click(function(){
  $("#pa").toggle();
  $("#pa").siblings().hide();
  });

 });



