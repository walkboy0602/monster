
//declare a module
var shopApp = angular.module("shopApp", ['shopAPI', 'ui.bootstrap', 'ngSanitize'])
                    .config(function ($locationProvider, $routeProvider) {

                        //Remove Anchor (#) tag on URL
                        $locationProvider.html5Mode(true).hashPrefix('!');

                        //$routeProvider.when('/', {
                        //    templateUrl: 'partials/home.html',
                        //    controller: HomeCtrl
                        //});

                        //$routeProvider.when('/tags/:tagId', {
                        //    templateUrl: 'partials/result.html',
                        //    controller: TagResultCtrl
                        //});
                        //$routeProvider.otherwise({redirectTo: '/home', controller: HomeCtrl});
                    });

shopApp.run(['$rootScope', '$window', '$http', function ($rootScope, $window, $http) {
    //add this so server side will recognise as ajax request
    $http.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

    $rootScope.alert = {
        type: 'danger',
        msg: 'There was an error while processing your request.',
        title: 'Oh Crap!',
        display: false
    }
}]);
