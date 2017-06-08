<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/1
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<section>
    <h2><strong style="color:grey;"><a href="" id="atype"></a></strong></h2>
    <%--<input type="text" class="textbox" placeholder="默认宽度..."/>--%>
    <%--<input type="text" class="textbox textbox_295" placeholder="class=295px..."/>--%>
    <form action="list.do">
        <input type="hidden" name="articleTypeId" id="atype2" value="${articleTypeId}">
        <input type="text" name="name" value="${name}" class="textbox textbox_225" placeholder="请输入名称"/>
        <input type="text" name="title" value="${title}" class="textbox textbox_225" placeholder="请输入标题"/>
        <input type="submit" value="查询" class="group_btn"/>
        <a href="details.do"><input type="button" value="添加" class="group_btn"/></a>
    </form>

</section>
<table class="table">
    <tr>
        <th>名称</th>
        <th>标题</th>
        <th>具体内容</th>
        <th>日期</th>
        <th>操作</th>

    </tr>
    <c:forEach items="${page.list}" var="article">
        <tr style="text-align: center">
            <td>${article.articleName}</td>
            <td>${article.articleTitle}</td>
            <td style="width:265px;">
                <div class="cut_title ellipsis">
                        ${article.articleContent}
                </div>
            </td>
            <td>${article.articleDate}</td>
            <td>
                <a href="details.do?articleId=${article.articleId}&&style=1">详情</a>
                <a href="details.do?articleId=${article.articleId}&&style=2">修改</a>
                <a href="remove.do?articleId=${article.articleId}&&articleTypeId=${articleTypeId}">删除</a>
                    <%--<a href="#" class="inner_btn">表内按钮</a>--%>
            </td>
        </tr>
    </c:forEach>
</table>
<aside class="paging">
    共${page.totalNumber}条记录 ${page.currentPage}/${page.totalPage}页
    <a href="list.do?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=1">首页</a>
    <c:if test="${!page.firstPage}">
        <a href="list.do?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=${page.currentPage-1}">上一页</a>
    </c:if>
    <c:if test="${!page.lastPage}">
        <a href="list.do?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=${page.currentPage+1}">下一页</a>
    </c:if>
    <a href="list.do?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage=${page.totalPage}">尾页</a>
    <%--为了js能取到currentPage的值--%>
    <input type="hidden" id="currentPage" value="${page.currentPage}">
    第<select class="select" style="border-style: hidden">
    <c:forEach begin="1" end="${page.totalPage}" var="v">
        <option value="${v}">${v}</option>
    </c:forEach>

</select>页
</aside>
<script>
    //    设置title
    $(document).ready(function () {
                var n = $("#atype2").val();
                console.info(n);
                switch (n) {
                    case "1":
                        $("#atype").text("景区留言:");
                        break;
                    case "2":
                        $("#atype").text("景区新闻:");
                        break;
                    case "3":
                        $("#atype").text("旅游路线:");
                        break;
                    case "4":
                        $("#atype").text("景区景点:");
                        break;
                    case "5":
                        $("#atype").text("景区酒店:");
                        break;
                    case "6":
                        $("#atype").text("景区美食:");
                        break;
                    default:
                        $("#atype").text("景区:");
                }
            }
    );
//    设置页码
    $(document).ready(function () {
       var n= $("#currentPage").val();
        $(".select").find("option[value='"+n+"']").attr("selected",true);
    });
//    实现select改变就跳转该页
    $(".select").change(function () {
        var m=$(".select option:selected").val();
        window.location.href="list.do?articleTypeId=${articleTypeId}&&name=${name}&&title=${title}&&currentPage="+m+"";
    });
</script>