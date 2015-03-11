# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#sortable").sortable();
  $("#sortable").disableSelection();
  $("#save_order").click (e) ->
    e.preventDefault()
    updateOrder()

updateOrder = ()->
  window.location.href = "/slides/order?" + $('#sortable').sortable('serialize');
