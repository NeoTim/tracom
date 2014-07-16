'use strict'

angular.module('tracomApp').controller 'NavbarCtrl', ($scope, $location, Auth) ->
  $scope.menu = [
    # title: 'Home'
    # link: '/'
  ]
  $scope.adminMenu = [
    title: 'Dashboard'
    link: '/dashboard'
    icon: 'fa-dashboard'
  ,
    title: 'Service'
    link: '/service'
    icon: 'fa-briefcase'
  ,
    title: 'Production'
    link: '/production'
    icon: 'fa-bar-chart-o'
  ,
    title: 'Calendar'
    link: '/calendar'
    icon: 'fa-calendar-o'
  ,
    title: 'Customer'
    link: '/customers'
    icon: 'fa-group'
  ]
  $scope.isCollapsed = true
  $scope.isLoggedIn = Auth.isLoggedIn
  $scope.isAdmin = Auth.isAdmin
  $scope.getCurrentUser = Auth.getCurrentUser

  $scope.logout = ->
    Auth.logout()
    $location.path '/login'

  $scope.isActive = (route) ->
    route is $location.path()
