# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

globals = {}

$ ->
  $(".tile").hover (->
    addPulse($(this))
  ), ->
    setStatus($(this), "")

  $(".tile").click ->
    $(".tile").addClass "bounceOutLeft"
    setTimeout (->
      $("#primaryContainer").addClass "hidden"
      $("#footerContainer").addClass "hidden"
      $("#secondaryContainer").removeClass "hidden"
      $("#secondaryContainer").addClass "animated bounceInRight"
    ), 500

addPulse = (item) ->
  if status(item) != "pulsing"
    item.removeClass "flipInX"
    item.addClass "animated pulse"
    setStatus(item, "pulsing")

    setTimeout (->
      item.removeClass "pulse"
    ), 1000

itemKey = (item) ->
  item.children("h1").text()

status = (item) ->
  globals[itemKey(item)]

setStatus = (item, value) ->
  globals[itemKey(item)] = value
