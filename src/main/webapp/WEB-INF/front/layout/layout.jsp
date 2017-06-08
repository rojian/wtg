<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/27
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%--添加logo--%>
    <link rel="shortcut icon" href="/assets/img/logo-wtg.png" type="image/x-icon">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>五条沟</title>
    <link href="/assets/css/css.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/assets/js/jquery/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/assets/js/jquery/index_tab.js"></script>
    <script type="text/javascript" src="/assets/js/jquery/left_roll.js"></script>
    <script type="text/javascript" src="/assets/js/change-tab.js"></script>
    <script type="text/javascript" src="/assets/js/Page-loading.js"></script>
    <script type="text/javascript" src="/assets/js/Bb-tile.js"></script>
    <script type="text/javascript" src="/assets/js/room-flash.js"></script>
    <script type="text/javascript" src="/assets/js/jquery/angular.min.js"></script>

    <%--<script type="text/javascript" src="/assets/js/jquery/vue.min.js"></script>--%>
    <%--<script type="text/javascript" src="/assets/js/jquery/vue-resource.js"></script>--%>
</head>
<body>
<!--背景图片-->
<div class="picture" id="picture"><img id="bgImg" src="/assets/img/home_top_bg.jpg" height="742"></div>
<div class="total" id="total">
    <!--total-width begin-->
    <div class="w1180" ng-app="type" ng-controller="myType">
        <!--top begin-->
        <tiles:insertAttribute name="header"/>
        <!--top end-->
        <!--center begin-->
        <div class="wtg-cen">
            <!--left begin-->
            <tiles:insertAttribute name="l-content"/>
            <!--left end-->
            <!--right begin-->
            <tiles:insertAttribute name="r-content"/>
            <!--right end-->
        </div>
        <!--center end-->
        <!--footer begin-->
        <tiles:insertAttribute name="footer"/>
        <!--footer end-->
    </div>
    <!--total-width end-->
</div>
<!--屏蔽右键,F12 begin-->
<%--<script type="text/javascript" src="/assets/js/Shielding-key.js"></script>--%>
<!--屏蔽右键,F12 end-->
</body>
<script>
    angular.module('type', []).controller('myType', function ($scope, $http) {
        var url = "http://localhost:8080/wtg/getArticleList.action";
        var postData = {text: 'long blob of text'};
        //1、留言
        var config = {params: {articleTypeId: 1, currentPage: 1, pageNumber: 3}};
        $http.post(url, postData, config).success(function (json) {
            $scope.type1 = json.list;
            console.info(json.list)
            $scope.page1 = json;
        });
//        2、景区新闻
        var config = {params: {articleTypeId: 2, currentPage: 1, pageNumber:8}};
        $http.post(url, postData, config).success(function (json) {
            $scope.type2 = json.list;
            $scope.page2 = json;
        });
//        3、旅游路线
        var config = {params: {articleTypeId: 3, currentPage: 1, pageNumber:8}};
        $http.post(url, postData, config).success(function (json) {
            $scope.type3 = json.list;
            $scope.page3 = json;

        });
//        4、景区景点
        var config = {params: {articleTypeId: 4, currentPage: 1, pageNumber:4}};
        $http.post(url, postData, config).success(function (json) {
            $scope.type4= json.list;
            $scope.page4 = json;
        });
//        5、景区酒店
        var config = {params: {articleTypeId: 5, currentPage: 1, pageNumber:4}};
        $http.post(url, postData, config).success(function (json) {
            $scope.type5 = json.list;
            $scope.page5 = json;
        });
//        6、景区美食
        var config = {params: {articleTypeId: 6, currentPage: 1, pageNumber:4}};
        $http.post(url, postData, config).success(function (json) {
            $scope.type6 = json.list;
            $scope.page6 = json;
        });
    });
</script>
</html>

