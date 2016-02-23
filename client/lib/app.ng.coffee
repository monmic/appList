angular.module 'appNameApp', [
  'angular-meteor'
  'ui.router'
  'ui.bootstrap'
]

onReady = () ->
  angular.bootstrap document, ['appNameApp']
  
if Meteor.isCordova
  angular.element(document).on 'deviceready', onReady
else
  angular.element(document).ready onReady