<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/27
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w355">

    <!--========================-->
    <div class="wtg-img">
        <span><img src="/assets/img/img_01_07.jpg"/></span>
    </div>
    <!--========================-->

    <!--========================-->
    <div class="wtg-love">
        <span><img src="/assets/img/img_01_09.jpg" alt="正在加载图片"></span>

        <div class="wtg-trends">
            <ul>
                <li ng-repeat="article in type1"><a href="javascript:">
                    {{article.articleContent}}</a></li>
            </ul>
        </div>
    </div>
    <!--========================-->

    <!--========================-->
    <div class="wtg-advert">
        <form action="save.action" method="POST">
            <input type="hidden" name="articleTypeId" value="1">
            <input type="hidden" name="articleTitle" value="">
            <input type="hidden" name="articleName" value="">
            <div>
                <textarea name="articleContent" cols=48 rows=8 placeholder="我也来说一说！"></textarea>
            </div>
            <input type="submit" value="提交" style="color:#4e4d4d;">
            <input type="reset" value="清空" style="color:#4e4d4d;">
        </form>
    </div>
    <!--========================-->
</div>
