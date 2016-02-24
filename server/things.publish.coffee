'use strict'

Things.allow
  insert: (userId, thing) ->
    thing.createdAt = new Date()
    thing.name_sort = thing.name.toLowerCase()
    true
  update: (userId, thing, fields, modifier) ->
    thing.updatedAt = new Date()
    thing.name_sort = thing.name.toLowerCase()
    true
  remove: (userId, thing) ->
    true


Meteor.methods
  'things.insert': (newThing) ->
    Things.insert newThing