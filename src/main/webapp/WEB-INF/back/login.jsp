<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/1
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<dt>
    <strong>五条沟后台登录</strong>
    <em>Management System</em>
</dt>
<form action="login.do">
    <dd class="user_icon">
        <input type="text" name="userName" placeholder="账号" class="login_txtbx"/>
    </dd>
    <dd class="pwd_icon">
        <input type="password" name="userPassword" placeholder="密码" class="login_txtbx"/>
    </dd>
    <%--<dd class="val_icon">--%>
        <%--<div class="checkcode">--%>
            <%--<input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">--%>
            <%--<canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>--%>
        <%--</div>--%>
        <%--<input type="button" value="验证码核验" class="ver_btn" onClick="validate();">--%>
    <%--</dd>--%>
    <dd>
        <input type="submit" value="立即登陆" class="submit_btn"/>
    </dd>
</form>
<dd>
    <p>© 2017 Jacky.Rowe 版权所有</p>

</dd>