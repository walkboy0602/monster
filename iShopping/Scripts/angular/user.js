//Login User
shopApp.controller("LoginController", ['$scope', 'dataFactory', '$route',
    function ($scope, dataFactory, $route) {

        $scope.form = {
            email: $('#email').val(),
            password: $("#password").val()
        }

        $scope.save = function (form) {

            dataFactory.login(form)
                .success(function (data, status) {
                    window.location = "/search";
                })
                .error(function (data, status) {
                    if (status === 400) {
                        $scope.alert = {
                            type: 'danger',
                            message: data.Message,
                            display: true
                        };
                    } else {
                        $scope.alert = {
                            type: 'danger',
                            title: 'Oh Crap!',
                            message: 'There was an error while processing your request.',
                            display: true
                        };
                    }
                });

        }

    }]);

//Register Account
shopApp.controller("RegisterController", ['$scope', 'dataFactory',
    function ($scope, dataFactory) {
        var errorMsg = "";
        $scope.save = function (form) {

            form.Mobile = form.PhonePrefix + form.PhoneNo;

            dataFactory.register(form)
                .success(function (data) {
                    $scope.alert = {
                        type: 'success',
                        display: true,
                        message: 'Thank you, your message have been successfully sent out.'
                    };
                })
                .error(function (data, status) {
                    if (status === 400) {
                        $scope.alert = {
                            type: 'danger',
                            display: true,
                            message: data.Message
                        };

                    } else {
                        $scope.alert = {
                            type: 'danger',
                            message: 'There was an error while processing your request.',
                            display: true
                        };
                    }
                });

        }


    }]);

//User
shopApp.controller("UserController", ['$scope', 'dataFactory', '$route',
    function ($scope, dataFactory, $route) {

        $scope.logout = function () {
            dataFactory.logout()
                .success(function (data) {
                    window.location = "/user/login";
                });
        }

    }]);