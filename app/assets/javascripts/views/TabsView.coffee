Backbone = require 'backbone'
$ = require 'jquery'
Backbone.$ = $

class TabsView extends Backbone.View

  initialize: =>
    @$el = $ '.tabs'

    @$el.on 'click', '.tabs__button a', @onTabsButtonClick

  render: =>
    console.log 'TabsView render'

    @$pages = @$el.find '.tabs__page'
    @$buttons = @$el.find '.tabs__button'

  onTabsButtonClick: (event) =>
    event.preventDefault()

    @resetTabs()
    @showTab event.currentTarget

  resetTabs: =>
    @$buttons.removeClass 'is-active'
    @$pages.removeClass 'is-active'

  showTab: (el) =>
    $el = $ el

    $el.parent().addClass 'is-active'
    @$pages.parent().find($el.attr 'href').addClass 'is-active'

TabsView 

module.exports = TabsView
