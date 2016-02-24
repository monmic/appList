'use strict'

angular.module 'appNameApp'
.directive 'toolbar', ->
  restrict: 'AE'
  templateUrl: 'client/components/toolbar/toolbar.view.ng.html'
  replace: true
