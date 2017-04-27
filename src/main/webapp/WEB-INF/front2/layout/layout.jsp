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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%--<title>五条沟--首页</title>--%>
    <link href="css/css.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery/index_tab.js"></script>
    <script type="text/javascript" src="js/jquery/left_roll.js"></script>
    <script type="text/javascript" src="js/change-tab.js"></script>
    <script type="text/javascript" src="js/Page-loading.js"></script>
    <script type="text/javascript" src="js/Bb-tile.js"></script>
</head>

<body>
<!--background picture begin-->
<div class="picture" id="picture"><img id="bgImg" src="images/home_top_bg.jpg" height="742"></div>
<!--background picture end-->

<div class="total" id="total">
    <!--total-width begin-->
    <div class="w1180">
        <!--top begin-->
        <tiles:insertAttribute name="header"/>
        <!--top end-->
        <!--center begin-->
        <div class="Lj-cen">
            <!--left begin-->
            <tiles:insertAttribute name="l-content"/>
            <!--left end-->
            <!--right begin-->
            <<tiles:insertAttribute name="r-content"/>
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
<script type="text/javascript" src="js/Shielding-key.js"></script>
<!--屏蔽右键,F12 end-->
</body>
</html>

