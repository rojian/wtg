<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/27
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="wtg-head">

    <!--head-left begin-->
    <div class="head-left">

        <%--<a href="javascript:" style=" margin-bottom:6px"><img src="/assets/img/img_01_01.jpg"/></a>--%>
        <%--<a href="javascript:"><img src="/assets/img/img_01_02.jpg"/></a>--%>
    </div>
    <!--head-left end-->

    <!--head-right begin-->
    <div class="head-nav">

        <!--===================-->
        <div class="head-top" id="push">
            <ul>
                <li id="f1" class="dq" onclick="changeflash(1)">首页</li>
                <li id="f2" onclick="changeflash(2)">文化小城</li>
                <li id="f3" onclick="changeflash(3)">景点保护</li>
                <li id="f4" onclick="changeflash(4)">旅游攻略</li>
            </ul>
        </div>
        <!--===================-->

        <!--===================-->
        <div class="head-text">
            <div id="push1" class="protect" style=" display:block">
                <div class="conduct">
                    <div class="conduct-1" id="pad">
                        <ul>
                            <li id="b1" class="dq" onclick="Padflash(1)"></li>
                            <li id="b2" onclick="Padflash(2)"></li>
                            <li id="b3" onclick="Padflash(3)"></li>
                        </ul>
                    </div>
                    <div id="pad1" style="display:block"><a href="javascript:"><img
                            src="/assets/img/img_01_03.jpg"/></a></div>
                    <div id="pad2" style="display:none"><a href="javascript:"><img src="/assets/img/img_01_04.jpg"/></a>
                    </div>
                    <div id="pad3" style="display:none"><a href="javascript:"><img src="/assets/img/img_01_05.jpg"/></a>
                    </div>
                </div>
            </div>
            <div id="push2" class="protect">
                <div class="conduct"><img src="/assets/img/img_01_05.jpg"/>
                    <div class="conduct-text">
                        <a href="javascript:">
                            <div class="img"><img src="/assets/img/icon_01_04.png"/></div>
                            <span>五条沟</span></a>
                        <a href="javascript:">
                            <div class="img"><img src="/assets/img/icon_01_05.png"/></div>
                            <span>历史名人</span></a>

                    </div>
                </div>
            </div>
            <div id="push3" class="protect">
                <div class="conduct"><img src="/assets/img/img_01_04.jpg"/>
                    <div class="conduct-text">
                        <a href="javascript:">
                            <div class="img"><img src="/assets/img/icon_01_07.png"/></div>
                            <span>管理指南</span></a>
                    </div>
                </div>
            </div>
            <div id="push4" class="protect">
                <div class="conduct"><img src="/assets/img/img_01_03.jpg"/>
                    <div class="conduct-text">
                        <a href="getList.action?articleTypeId=6">
                            <div class="img"><img src="/assets/img/icon_01_15.png"/></div>
                            <span>美&nbsp;食</span></a>
                        <a href="getList.action?articleTypeId=5">
                            <div class="img"><img src="/assets/img/icon_01_16.png"/></div>
                            <span>住&nbsp;宿</span></a>
                        <%--<a href="javascript:"><div class="img"><img src="/assets/img/icon_01_17.png"/></div><span>酒&nbsp;吧</span></a>--%>
                        <%--<a href="javascript:"><div class="img"><img src="/assets/img/icon_01_18.png"/></div><span>音&nbsp;乐</span></a>&lt;%&ndash;&ndash;%&gt;--%>
                        <%--<a href="javascript:">--%>
                            <%--<div class="img"><img src="/assets/img/icon_01_05.png"/></div>--%>
                            <%--<span>恋在五条沟</span></a>--%>
                        <%--<a href="javascript:"><div class="img"><img src="/assets/img/icon_01_16.png"/></div><span>周边景点</span></a>--%>
                        <%--<a href="javascript:">--%>
                            <%--<div class="img"><img src="/assets/img/icon_01_17.png"/></div>--%>
                            <%--<span>小城地图</span></a>--%>
                    </div>
                </div>
            </div>
        </div>
        <!--===================-->

    </div>
    <!--head-right end-->

</div>
