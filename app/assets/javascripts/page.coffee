# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  page = (d) ->
    e = $("input[checked=\"checked\"]")
    t = undefined
    if d > 0
      t = e.prev()
    else
      t = e.next()
    name = t.attr("name")
    if name is "radio-set"
      if t.length > 0
        e.removeAttr "checked"
        t.attr "checked", "checked"
        t.click()
  $(".page-about").on "mousewheel", (e, d) ->
    page d