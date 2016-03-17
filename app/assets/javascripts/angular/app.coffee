@App = angular
  .module 'enapparte', [
    'rails'
    'ngSanitize'
    'cgNotify'
    'angularUtils.directives.dirPagination'
    'underscore'
    'angularMoment'
    'ui.bootstrap'
    'Devise'
    'focus-if'
    'ui.router'
  ]

@App.config ['AuthProvider', (AuthProvider)->
]

@App.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
]

@App.run ['$rootScope', 'Auth', ($rootScope, Auth)->
  Auth.currentUser().then (user)->
    $rootScope.currentUser = user

  $rootScope.$on '$stateChangeStart', (e)->
    $rootScope.rootPath = false
    $(window).off('.affix')
    $("#header")
        .removeClass("affix affix-top affix-bottom")
        .addClass("not-fixed")
        .removeData("bs.affix")
]

@App.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise('/')

  $stateProvider
    .state 'home',
      url: '/'
      templateUrl: 'root.html'
      controller: 'RootController'
    .state 'shows',
      url: '/shows'
      templateUrl: 'shows/index.html'
    .state 'shows/payment',
      url: '/shows/payment'
      templateUrl: 'shows/payment.html'
]

