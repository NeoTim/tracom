'use strict'

angular.module('tracomApp').config ($stateProvider) ->
  $stateProvider.state 'calendar',
    url: '/calendar'
    templateUrl: 'app/ui/calendar/calendar.html'
    controller: 'CalendarCtrl'
