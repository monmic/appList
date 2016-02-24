'use strict'

angular.module 'appNameApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main',
    url: '/'
    templateUrl: 'client/main/main.view.ng.html'
    controller: 'MainCtrl'
