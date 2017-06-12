<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/27
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w786">

    <!--=================-->
    <div class="roll-top"><span>五条沟动态</span><a href="getList.action?articleTypeId=2">更多 > </a></div>
    <!--=================-->

    <!--=================-->
    <div class="wtg-news">
        <div class="news" >
            <ul>
                <li ng-repeat="article in type2"><img src="/assets/img/icon_01_38.jpg"/><a href="three.action?articleId={{article.articleId}}">{{article.articleTitle}}</a></li>
            </ul>
        </div>
        <div class="news-flash">
            <div class="news-pad"><a href="javascript:">
                <%--<img src="/assets/img/img_01_10.jpg" width="360" height="245"/>--%>
            </a>
            </div>
        </div>
        <%--<div class="advert"><a href="javascript:"><img src="/assets/img/img_01_30.jpg"/></a></div>--%>
    </div>
    <!--=================-->

    <!--=================-->
    <div class="wtg-news">
        <div class="manage-top">
            <div class="manage-more">
                <span>旅游路线推荐</span>
                <a href="getList.action?articleTypeId=3">more&nbsp;></a>
            </div>
        </div>

        <!--text begin-->
        <div class="news" id="text1" style=" display:block">
            <ul>
                <li ng-repeat="article in type3" ><img src="/assets/img/icon_01_41.jpg"/><a href="three.action?articleId={{article.articleId}}">{{article.articleTitle}}</a></li>
            </ul>

        </div>
        <div class="news-flash">
            <div class="news-pad" style="float: left"><a href="javascript:">
                <%--<img src="/assets/img/img_01_10.jpg" width="360" height="245"/>--%>
            </a></div>
        </div>
        <!--text end-->
    </div>
    <!--=================-->

    <!--=================-->
    <div class="wtg-stay">
        <div class="stay-top">
            <div class="stay-right">
                <span>旅游景点</span>
                <a href="getList.action?articleTypeId=4">more ></a>
            </div>
        </div>
        <div class="stay-text">
            <ul>
                <li ng-repeat="article in type4" ><a href="javascript:"><img src="/assets/img/img_01_13.jpg"></a><span><a
                        href="three.action?articleId={{article.articleId}}">{{article.articleName}}</a></span></li>
            </ul>
        </div>
    </div>
    <!--=================-->

    <!--=================-->

    <div class="wtg-stay">
        <div class="stay-top">
            <div class="stay-right">
                <span>住在五条沟</span>
                <a href="getList.action?articleTypeId=5">more ></a>
            </div>
        </div>
        <div class="stay-text">
            <ul>
                <li ng-repeat="article in type5" ><a href="javascript:"><img src="/assets/img/img_01_17.jpg"></a><span><a
                        href="three.action?articleId={{article.articleId}}">{{article.articleName}}</a></span></li>
            </ul>
        </div>
    </div>
    <!--=================-->

    <!--=================-->
    <div class="wtg-stay">
        <div class="stay-top">
            <div class="stay-right">
                <span>五条沟美食</span>
                <a href="getList.action?articleTypeId=6">more ></a>
            </div>
        </div>
        <div class="stay-text">
            <ul>
                <li ng-repeat="article in type6"><a href="javascript:"><img height="100" width="150" src="/assets/img/img_01_16.jpg"></a><span><a
                        href="three.action?articleId={{article.articleId}}">{{article.articleName}}</a></span></li>
            </ul>
        </div>
    </div>
    <!--=================-->

</div>
