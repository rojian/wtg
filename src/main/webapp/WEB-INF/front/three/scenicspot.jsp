<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/16
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w786">

    <!--title begin-->
    <div class="wtg-news-title"><div></div></div>
    <!--title end-->

    <!--impression begin-->

    <div class="wtg-impression">

        <!--======================-->
        <div class="impression-img">
            <%--<div class="clickL"><img id="leftNav" src="/assets/img/icon_03_01.png"/></div>--%>
            <div class="impression-con" id="wtg-flash">
                       <span id="wtg-img">
                           <a href="javascript:"><img  src="/assets/img/img_03_01.jpg"/></a>
                           <%--<a href="javascript:"><img  src="/assets/img/img_03_02.jpg"/></a>--%>
                           <%--<a href="javascript:"><img  src="/assets/img/img_03_03.jpg"/></a>--%>
                           <%--<a href="javascript:"><img  src="/assets/img/img_03_04.jpg"/></a>--%>
                       </span>
            </div>
            <%--<div class="clickR"><img id="rightNav" src="/assets/img/icon_03_02.png"/></div>--%>
        </div>
        <!--======================-->

        <!--======================-->
        <div class="wtg-take">
            <span>${article.articleName}</span>
            <div>
             ${article.articleContent}
            </div>
        </div>
        <!--======================-->
        <%--<div class="Minute-paging"><span><a href="javascript:">上一篇</a><a href="javascript:">下一篇</a></span></div>--%>

    </div>

    <!--impression end-->


</div>