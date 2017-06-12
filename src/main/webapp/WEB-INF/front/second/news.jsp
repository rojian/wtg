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
        <div class="wtg-news-page"> 共${page.totalNumber}条记录 ${page.currentPage}/${page.totalPage}页
            <a href="getList.action?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=1">首页</a>
            <c:if test="${!page.firstPage}">
                <a href="getList.action?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=${page.currentPage-1}">上一页</a>
            </c:if>
            <c:if test="${!page.lastPage}">
                <a href="getList.action?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=${page.currentPage+1}">下一页</a>
            </c:if>
            <a href="getList.action?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=${page.totalPage}">尾页</a>
            <%--为了js能取到currentPage的值--%>
            <input type="hidden" id="currentPage" value="${page.currentPage}">
            第<select class="select" style="border-style: hidden">
                <c:forEach begin="1" end="${page.totalPage}" var="v">
                    <option value="${v}">${v}</option>
                </c:forEach>
            </select>页
        </div>
    </div>
    <!--text end-->
</div>
<script>
    $(document).ready(function () {
        var n = $("#currentPage").val();
        $(".select").find("option[value='" + n + "']").attr("selected", true);
    });
    //    实现select改变就跳转该页
    $(".select").change(function () {
        var m = $(".select option:selected").val();
        window.location.href = "getList.action?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=" + m + "";
    });
</script>