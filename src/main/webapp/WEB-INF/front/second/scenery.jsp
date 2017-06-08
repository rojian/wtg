<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/27
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w786">

    <!--title begin-->
    <div class="wtg-news-title"><span></span><div>小桥流水</div></div>
    <!--title end-->

    <!--text begin-->
    <div class="wtg-Bar-List">

        <ul>
            <li>
                <div class="Bar-flash">

                    <!--显示大图 begin-->
                    <div class="Bar-big"><a href="javascript:"><img id="bigImg" class="pic-img" width="176" height="127" src="/assets/img/img_01_16.jpg"/></a></div>
                    <!--显示大图 end-->

                    <!--Bar-circle begin-->
                    <div class="Bar-circle">
                        <a class="clickL" href="javaScript:Scroll('Direction',1)"><img id="oBtn_Left" src="/assets/img/icon_07_03.jpg"/></a>
                        <div id="smallImg" class="picarea">
                            <div class="imgbox" id="smallSpace">
                                <a href="javascript:"><img src="/assets/img/img_01_16.jpg" onclick="changeBigImg(this)"/></a>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_17.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_18.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_19.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_20.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_21.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_22.jpg" onclick="changeBigImg(this)"/></a>--%>
                            </div>
                        </div>
                        <a class="clickR" href="javaScript:Scroll('Direction',-1)"><img id="oBtn_Right" src="/assets/img/icon_07_02.jpg"/></a>
                    </div>
                    <!--Bar-circle end-->

                </div>

                <!--详情 begin-->
                <div class="Bar-Text">
                    <h1 class="Bar-h1"><a href="javascript:">红烧猪蹄</a></h1>
                          <span class="Bar-Txt">一路走来，我们一直努力让您的旅途多一点完美，多一点柔情一点完美，多一点柔情多一
情点柔情一点完美，多一点柔一点完美，多一点柔情多一点柔情点柔情一点完美，多一点
多一点柔情点柔情一点完美，多多一点柔情点柔情一点完美</span>
                    <i class="Bar-Text-i">地址：五条沟月红岩</i>
                    <i class="Bar-Text-i">电话：13880134567</i>
                </div>
                <!--详情 end-->
            </li>

            <li>
                <div class="Bar-flash">

                    <!--显示大图 begin-->
                    <div class="Bar-big"><a href="javascript:"><img id="bigImg" class="pic-img" width="176" height="127" src="/assets/img/img_01_16.jpg"/></a></div>
                    <!--显示大图 end-->

                    <!--Bar-circle begin-->
                    <div class="Bar-circle">
                        <a class="clickL" href="javaScript:Scroll('Direction',1)"><img id="oBtn_Left" src="/assets/img/icon_07_03.jpg"/></a>
                        <div id="smallImg" class="picarea">
                            <div class="imgbox" id="smallSpace">
                                <a href="javascript:"><img src="/assets/img/img_01_16.jpg" onclick="changeBigImg(this)"/></a>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_17.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_18.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_19.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_20.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_21.jpg" onclick="changeBigImg(this)"/></a>--%>
                                <%--<a href="javascript:"><img src="/assets/img/img_01_22.jpg" onclick="changeBigImg(this)"/></a>--%>
                            </div>
                        </div>
                        <a class="clickR" href="javaScript:Scroll('Direction',-1)"><img id="oBtn_Right" src="/assets/img/icon_07_02.jpg"/></a>
                    </div>
                    <!--Bar-circle end-->

                </div>

                <!--详情 begin-->
                <div class="Bar-Text">
                    <h1 class="Bar-h1"><a href="javascript:">红烧猪蹄</a></h1>
                          <span class="Bar-Txt">一路走来，我们一直努力让您的旅途多一点完美，多一点柔情一点完美，多一点柔情多一
情点柔情一点完美，多一点柔一点完美，多一点柔情多一点柔情点柔情一点完美，多一点
多一点柔情点柔情一点完美，多多一点柔情点柔情一点完美</span>
                    <i class="Bar-Text-i">地址：五条沟月红岩</i>
                    <i class="Bar-Text-i">电话：13880134567</i>
                </div>
                <!--详情 end-->
            </li>
        </ul>

        <div class="wtg-news-page">共6条记录 1/1页<a href="javascript:">首页</a><a href="javascript:">上一页</a><a href="javascript:">下一页</a><a href="javascript:">尾页</a>第<select class="select"><option>1</option><option>2</option></select>页</div>
    </div>
    <!--text end-->
</div>