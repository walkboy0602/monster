//Login User

function ListingCreateCtrl($scope, listingFactory, referenceFactory, $filter) {
    $scope.form = {};
    var reference;

    $scope.setCategory = function (id, value) {

        $scope.categories = [];

        $scope.selected_type = value;

        angular.forEach($filter('filter')(reference, { ParentID: id.toString() }, true), function (val, key) {
            angular.forEach($scope.tags, function (v, k) {
                if (v.ParentID === val.KeyString) {
                    $scope.categories.push(v);
                }
            })
        })

        $('a[href="#detail"]').tab('show');

        $scope.form.SaleType = id;
    }

    $scope.getClass = function (id) {
        if (id === $scope.form.SaleType) {
            return "category active";
        } else {
            return "category";
        }
    }

    //Load Reference List
    referenceFactory.list().then(function (response) {
        reference = response.data;
        $scope.saleTypes = $filter('filter')(reference, { Type: $scope.Enum.ReferenceType.SaleType.toString() }, true);
        $scope.tags = $filter('filter')(reference, { Type: $scope.Enum.ReferenceType.Tag.toString() }, true);
    });

    $scope.save = function () {
        $scope.form.id = $scope.id;
        console.log($scope.form);
        listingFactory.save($scope.form)
            .success(function (data, status) {
                $('a[href="#successtab"]').tab('show');
            })
            .error(function (data, status) {
                if (status === 400) {
                    $scope.warning(data.Message);
                } else {
                    $scope.error();
                }
            });
    }
}


shopApp.controller("ListingDetailCtrl", ['$scope', 'userFactory', '$route', 'referenceFactory', '$filter',
    function ($scope, userFactory, $route, referenceFactory, $filter) {

        //default option
        $scope.form.isWarrently = '0';

        //init validation
        var isValid = false;
        var validate = jQuery("#form").validationEngine({
            prettySelect: true,
            onValidationComplete: function (form, status) {
                isValid = status;
            }
        });

        $scope.next = function () {
            $('a[href="#contact"]').tab('show');
            validate.validationEngine('validate');
            if (isValid === false) {
                return;
            }
        }

    }]);

shopApp.controller("ListingContactCtrl", ['$scope', 'userFactory', '$route', 'referenceFactory', '$filter',
    function ($scope, userFactory, $route, referenceFactory, $filter) {


    }]);

