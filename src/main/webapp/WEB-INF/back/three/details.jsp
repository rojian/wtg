<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/2
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="save.do" method="post">
    <ul class="ulColumn2">
        <li>
            <span class="item_name" style="width:120px;">类型：</span>
            <select class="select" name="articleTypeId">
                <option value="2">景区新闻</option>
                <option value="3">旅游路线</option>
                <option value="4">景区景点</option>
                <option value="5">景区酒店</option>
                <option value="6">景区美食</option>
            </select>
            <%--<span class="errorTips">错误提示信息...</span>--%>
        </li>
        <input type="hidden" value="${article.articleId}" name="articleId">
        <li>

            <span class="item_name" style="width:120px;">名称：</span>
            <input type="text" name="articleName" value="${article.articleName}" class="textbox textbox_295"
                   placeholder="请输入名称"/>
            <%--<span class="errorTips">错误提示信息...</span>--%>
        </li>
        <li>

            <span class="item_name" style="width:120px;">标题：</span>
            <input type="text" name="articleTitle" value="${article.articleTitle}" class="textbox textbox_295"
                   placeholder="请输入标题"/>
            <%--<span class="errorTips">错误提示信息...</span>--%>
        </li>
        <li>

            <span class="item_name" style="width:120px;">姓名或地址：</span>
            <input name="articleAddress" value="${article.articleAddress}" type="text" class="textbox textbox_295"
                   placeholder="请输入姓名或地址"/>
            <%--<span class="errorTips">错误提示信息...</span>--%>
        </li>
        <li>

            <span class="item_name" style="width:120px;">电话：</span>
            <input name="articleTel" value="${article.articleTel}" type="text" class="textbox textbox_295"
                   placeholder="请输入电话号码"/>
            <%--<span class="errorTips">错误提示信息...</span>--%>
        </li>
        <%--<li>--%>
        <%--<span class="item_name" style="width:120px;">是否热销：</span>--%>
        <%--<label class="single_selection"><input type="radio" name="name"/>推荐</label>--%>
        <%--<label class="single_selection"><input type="radio" name="name"/>不推荐</label>--%>
        <%--</li>--%>
        <li id="articleDate">

            <span class="item_name" style="width:120px;">时间：</span>
            <input name="" value="${article.articleDate}" type="text" class="textbox textbox_295"
                   placeholder=""/>


        </li>
        <li>
            <span class="item_name" style="width:120px;">内容：</span>
            <textarea placeholder="内容信息" name="articleContent"
                      class="textarea" style="width:500px;height:100px;">${article.articleContent}
            </textarea>
        </li>

        <%--<li>--%>
        <%--<span class="item_name" style="width:120px;">上传图片：</span>--%>
        <%--<label class="uploadImg">--%>
        <%--<input type="file"/>--%>
        <%--<span>上传图片</span>--%>
        <%--</label>--%>
        <%--</li>--%>
        <input type="hidden" id="style" value="${style}">
        <li id="save">
            <span class="item_name" style="width:120px;"></span>
            <input type="submit" class="link_btn"/>
        </li>
    </ul>
</form>
</html>
<script>
    $(document).ready(function () {
        if ($("#style").val() == 1) {
            $("#save").empty();
        }else {
            $("#articleDate").empty();
        }
    });
</script>