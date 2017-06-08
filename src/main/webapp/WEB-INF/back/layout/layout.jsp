<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <meta name="author" content="DeathGhost"/>
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css"/>
    <!--[if lt IE 9]>
    <script src="/assets/js/html5.js"></script>
    <![endif]-->
    <script src="/assets/js/jquery/jquery-1.8.3.min.js"></script>
    <script src="/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <%--<script type="text/javascript" src="/assets/js/jquery/angular.min.js"></script>--%>
    <script>
        (function ($) {
            $(window).load(function () {

                $("a[rel='load-content']").click(function (e) {
                    e.preventDefault();
                    var url = $(this).attr("href");
                    $.get(url, function (data) {
                        $(".content .mCSB_container").append(data); //load new content inside .mCSB_container
                        //scroll-to appended content
                        $(".content").mCustomScrollbar("scrollTo", "h2:last");
                    });
                });

                $(".content").delegate("a[href='top']", "click", function (e) {
                    e.preventDefault();
                    $(".content").mCustomScrollbar("scrollTo", $(this).attr("href"));
                });

            });
        })(jQuery);
    </script>
</head>
<body ng-app="type" ng-controller="myType">
<!--header-->
<header>
    <tiles:insertAttribute name="header"/>
</header>

<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
    <tiles:insertAttribute name="l-content"/>
</aside>

<section class="rt_wrap content mCustomScrollbar">
    <tiles:insertAttribute name="r-content"/>
</section>
<input id="typeId" type="hidden" value=${articleTypeId}>
</body>

<script>

//动态获取数据
//function getList() {
//    angular.module('type', []).controller('myType', function ($scope, $http) {
//        var url = "http://localhost:8080/wtg/getArticleList.action";
//        var postData = {text: 'long blob of text'};
//        var typeId = $("#typeId").val();
//        console.info(typeId);
//        //1、留言
//        var config = {params: {articleTypeId: typeId, currentPage: 1, pageNumber: 3}};
//        $http.post(url, postData, config).success(function (json) {
//            $scope.type1 = json.list;
//            console.info(json);
//            $scope.page1 = json;
//        });
//    });
//}
</script>
</html>