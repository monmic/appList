'use strict'

angular.module 'appNameApp'
.controller 'MainCtrl', ($scope) ->
  $scope.subscribe 'things'

  $scope.helpers
    things: () ->
      Things.find {}, sort: {"name": 1}

  $scope.add = () ->
    if $scope.form.$valid
      Meteor.call("things.insert", $scope.newThing, (error, result) ->
        if error
          console.error error
        else
          if result
            console.log "thing inserted"
      )
      $scope.newThing = undefined
      
  $scope.remove = (thing) ->
    Things.remove thing._id
