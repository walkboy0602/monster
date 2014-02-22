
//declare a module
var shopApp = angular.module("shopApp", ['shopAPI', 'ui.bootstrap', 'ngRoute', 'ngSanitize'])
                    .config(function ($locationProvider, $routeProvider) {

                        //Remove Anchor (#) tag on URL
                        $locationProvider.html5Mode(true).hashPrefix('!');

                        $routeProvider.when('/listing/save/:id', {
                            controller: ListingCreateCtrl
                            //resolve: {
                            //    // I will cause a 1 second delay
                            //    delay: function ($q, $timeout) {
                            //        console.log('d');
                            //        var delay = $q.defer();
                            //        $timeout(delay.resolve, 1000);
                            //        return delay.promise;
                            //    }
                            //}
                        });
                        //    .when('/listing/uploader/:id', {
                        //    controller: ImageController      
                        //});

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

shopApp.run(['$rootScope', '$window', '$http', '$location', '$route', '$routeParams',
    function ($rootScope, $window, $http, $location, $route, $routeParams) {
        //add this so server side will recognise as ajax request
        $http.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

        $rootScope.$location = $location;
        $rootScope.$route = $route;
        $rootScope.$routeParams = $routeParams;

        $rootScope.id = $location.search().id;

        $rootScope.Enum = {
            ReferenceType: {
                None: 0,
                SaleType: 1,
                Category: 2,
                Tag: 3
            }
        }

        $rootScope.$on('$routeChangeSuccess', function () {
            $rootScope.id = $rootScope.$routeParams.id;
            $rootScope.$broadcast('ready');
        });

        $rootScope.errorMessage = "Sorry, there was an error while processing your request. <br/> Please contact our support";

        $rootScope.success = function (msg) {
            $rootScope.alert = {
                type: 'success',
                display: true,
                message: msg
            };
        }

        $rootScope.warning = function (message) {
            $rootScope.alert = {
                type: 'warning',
                display: true,
                message: message
            };
        }

        $rootScope.error = function (message) {
            $rootScope.alert = {
                type: 'danger',
                display: true,
                message: angular.isUndefined !== message ? $rootScope.errorMessage : message
            };
        }

    }]);
