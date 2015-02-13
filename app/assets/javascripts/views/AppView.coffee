Backbone = require 'backbone'
$ = require 'jquery'
Backbone.$ = $

TabsView = require './TabsView'

class AppView extends Backbone.View

  initialize: =>
    console.log 'appview init'

    @render()

  render: =>
    console.log 'appview render'

    new TabsView().render()

AppView

module.exports = AppView
