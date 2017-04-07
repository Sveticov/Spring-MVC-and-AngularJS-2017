/**
 * Created by SETICOV on 03.04.2017.
 */
var task_7 = angular.module('Task', [])

    .controller('home', function ($scope, $http, $location) {
        var url = $location.absUrl() + 'task_7';
        var config = {
            headers: {
                'Content-Type': 'application/json;charset=utf-8;'
            }
        }
        $scope.urlT = url;
        $http.get('/task_7', config)

            .success(function (data) {
                $scope.Task_ = data.text;
                $scope.Task_id = data.id_task;


            })

    });