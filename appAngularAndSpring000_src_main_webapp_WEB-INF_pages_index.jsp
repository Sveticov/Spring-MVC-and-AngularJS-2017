<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: SEvTICOV
  Date: 01.04.2017
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <spring:url value="/resource/task_7.js" var="mainJS"/>
    <script src="${mainJS}"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body ng-app="task_post">
<h2>Start page</h2>




<div ng-controller="task_post_controller">
    <div class="col-sm-4" style="background-color: lavenderblush">
        <p>input data</p>
        <input type="text" ng-model="inpText">
        <br><br>
        <input type="number" ng-model="inpID"><br><br>
        <button ng-click="sendMsg()">Send Msg</button>
    </div>


        <div class="col-sm-4" style="background-color: lavender">
            <p>post method</p>
            <p>request server </p>   {{result_msg}}

    <p>status server</p>  {{status_msg}}
        </div>


<div class="col-sm-4" style="background-color: antiquewhite">
    <button ng-click="showData()">Show data</button>
    <p style="background-color: greenyellow">send msg</p> {{new_msg}}
    </div>


    <div class="col-sm-8" style="background-color: azure">
    <button ng-click="listData()">Show list data</button>
    <%--<p>List: {{list}}</p>--%>
    <ul>
        <li ng-repeat="listV in list">id: {{listV.id_task}}    name: {{ listV.text }}</li>
    </ul>
    </div>
</div>
<script>
    var task_post = angular.module('task_post', []);
    var count = 0;
    task_post.controller('task_post_controller', function ($scope, $http) {


        $scope.sendMsg = function () {

            var msg = {text: $scope.inpText, id_task: $scope.inpID};
            $http.post('/task_write_7', msg)
                    .success(function (data, status) {
                        $scope.result_msg = "text: " + data.text + " id: " + data.id_task;
                        $scope.status_msg = status + " OK " ;
                        $scope.msg = msg;

                    })
        };
        $scope.showData = function () {  //button show data message

            $http.get('/task_get')
                    .success(function (data) {
                        $scope.new_msg ="text: "+ data.text + "  id: " + data.id_task;
                    })
        };

        $scope.listData=function(){
            $http.get('/task_list')
                    .success(function(data){
                        $scope.list=data;
                    })
                };
    });

</script>


</body>
</html>
