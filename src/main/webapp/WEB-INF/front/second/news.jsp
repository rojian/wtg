<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/16
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w786">

    <!--title begin-->
    <div class="wtg-news-title"><span></span>
        <div>五条沟最真实的景区动态信息</div>
    </div>
    <!--title end-->

    <!--text begin-->
    <div class="wtg-news-text">
        <ul>
            <c:forEach items="${page.list}" var="article">
                <li>
                    <span><a href="javascript:"><img src="/assets/img/img_02_01.jpg"/></a></span>
                    <dl>
                        <dt><a href="three.action?articleId=${article.articleId}">${article.articleTitle}</a></dt>
                        <%--<dd>${article.articleContent}</dd>--%>
                    </dl>
                </li>
            </c:forEach>
        </ul>
        <div class="wtg-news-page">共6条记录 1/1页<a href="javascript:">首页</a>
            <a href="javascript:">上一页</a>
            <a href="javascript:">下一页</a><a href="javascript:">尾页</a>第
            <select class="select">
                <option>1</option>
                <option>2</option>
            </select>页
        </div>
    </div>
    <!--text end-->


</div>