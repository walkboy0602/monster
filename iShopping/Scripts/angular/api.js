//Tutorial of how to use Angular integrate with Web Form
//http://weblogs.asp.net/dwahlin/archive/2013/08/16/using-an-angularjs-factory-to-interact-with-a-restful-service.aspx

angular.module('shopAPI', [])
    .factory('userFactory', ['$http', function ($http) {
        return {
            register: function (data) {
                return $http.post('/api/user/register', data);
            },
            login: function (data) {
                return $http.post('/api/user/login', data);
            },
            logout: function (data) {
                return $http.post('/api/user/logout', data);
            }
        }
    }])
    .factory('referenceFactory', ['$http', function ($http) {
        
        return {
            list: function (data) {
                return $http.get('/api/reference/list', { params: { ReferenceType: data, json: true } });
            }
        }

    }])
    .factory('listingFactory', ['$http', function ($http) {
        
        return {
            create: function (data) {
                return $http.post('/api/listing/create', data);
            },
            save: function (data) {
                return $http.post('/api/listing/save', data);
            },
            get: function (id) {
                return $http.get('/api/listing/get', { params: { id: id } });
            }

        }


    }])
    .factory('imageFactory', ['$http', function ($http) {

        return {
            delete: function (data) {
                //console.log(JSON.stringify(data));
                return $http.post('/api/image/delete', data);
            },
        }

    }]);


