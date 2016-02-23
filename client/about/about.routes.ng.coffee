'use strict'

angular.module 'appNameApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'about',
    url: '/about'
    templateUrl: 'client/about/about.view.ng.html'
    controller: 'AboutCtrl'
