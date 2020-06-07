<%--
  Created by IntelliJ IDEA.
  User: 41462
  Date: 2020/5/26
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>420blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="js/jquery-3.5.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!--
   <link rel="stylesheet" href="WEB-INF/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    -->
    <!--
    <script src="WEB-INF/static/bootstrap-3.3.7-dist/js/jquery-3.5.1.js"></script>
    <script src="WEB-INF/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    -->
</head>

<body>

<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="firstpage">420Blog</a>
        </div>
        <label class="toggle-label visible-xs-inline-block" for="toggle-checkbox">MENU</label>
        <input class="hidden" id="toggle-checkbox" type="checkbox">
        <div class="hidden-xs">
            <div class="col-sm-offset-2">
                <!--
                <ul class="nav navbar-nav navbar-list">
                    <li><a href="index.jsp">首页</a></li>
                    <li><a href="saveUserSuccess.jsp">暂无</a></li>
                    <li><a href="#">暂无</a></li>
                    <li><a href="#">暂无</a></li>
                    <li><a href="#">暂无</a></li>
                    <li><a href="#">暂无</a></li>
                    <li><a href="#">暂无</a></li>
                </ul>
                -->
            </div>
            <ul class="nav navbar-nav navbar-right">
                <!--
                <li><a href="login.html">登陆</a></li>
                -->
                <!--
                <li><a href="register">注册</a></li>
                -->
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">

        <div class="col-sm-2 hidden-xs">

            <div class="side-bar-card clearfix">
                <form action="addArticleMiddle" method="post" >
                    <input type="submit" value="发布文章" style="height:50px; font-size:35px;" size=65 name="submit">
                </form>
                <br>

                <form action="register" method="post" >
                    <input type="submit" value="注册账号" style="height:50px; font-size:35px;" size=65 name="submit">
                </form>
                <br>

                <h2>发布文章之前要先注册哦</h2>
                <br>

            </div>

            <!--
            <li><a href="register">注册</a></li>
            -->
            <!--
            <div class="list-group side-bar">
                <a class="list-group-item active" role="button">随笔</a>
                <a class="list-group-item" role="button">随笔</a>
                <a class="list-group-item" role="button">随笔</a>
                <a class="list-group-item" role="button">随笔</a>
                <a class="list-group-item" role="button">随笔</a>
                <a class="list-group-item" role="button">随笔</a>
            </div>
            -->

        </div>

        <!--
        <form action="firstpage" method="post" name="form1">
              <input id="submitButton" type="submit" value="点击1"/>
        </form>
        -->

        <!--
        <a href="firstpage">点击2</a>
        -->

        <%--
        <c:forEach items="${articles}" var="article">
            ${article.id}
            ${article.title}
            ${article.content}
        </c:forEach>
        --%>

        <div class="col-sm-7">
            <div class="blog-list">
    <c:forEach items="${articles}" var="article">
                <div class="blog-list-item clearfix">
                    <div class="col-xs-5">
                        <img src="images/blog.jpg">
                    </div>
                    <div class="col-xs-7">
                        <a href="article/showDetail?id=${article.id}" class="title">
                                ${article.title}
                        </a>
                        <div class="info">
                            <span>作者:${article.writer}</span>
                            <!--
                            <span class="avatar"><img src="image/v2-2d45613b0fb8cdd36f53c3b31d0c6ee8_hd.jpg"
                                                      alt="avatar"></span>
                           <span>散人</span> |
                            <span>2.8K</span>
                            <span class="glyphicon glyphicon-thumbs-up blog-hot" aria-hidden="true"></span> |
                            <span>5分钟前</span>   -->
                        </div>
                    </div>
                </div>
    </c:forEach>
            </div>
        </div>

        <div class="col-sm-3 hidden-xs">
            <div>
                <iframe scrolling="no" src="https://tianqiapi.com/api.php?style=tw&skin=pitaya" frameborder="0" width="300" height="500" allowtransparency="true"></iframe>
            </div>
            <br>
            <!--
            <div class="search-bar">
                <form role="form">
                    <div class="form-group has-feedback">
                        <label class="sr-only" for="Search">Search：</label>
                        <input type="search" class="form-control" placeholder="搜索" id="Search">
                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
                    </div>
                </form>
            </div>
            -->
            <div class="side-bar-card clearfix">
                <div class="col-xs-6">
                    <img src="images/adver.jpg">
                    <br>
                    <img src="images/adver.jpg">
                    <br>
                    <img src="images/adver.jpg">
                    <br>
                    <img src="images/adver.jpg">
                    <br>
                    <img src="images/adver.jpg">
                    <br>
                </div>

                <div class="col-xs-6 side-bar-introduction">
                    <div class="">广告</div>
                    <div class="side-bar-phone">联系qq：XXX</div>
                    <br>
                </div>

            </div>

            <!--
            <div class="side-bar-card side-bar-recommend clearfix">
                <div class="side-bar-title">推荐阅读</div>
                <div class="side-bar-body">
                    <div class="side-bar-list">
                        <div class="side-bar-item">
                            <a href="blog.html" class="side-item-title">浅析Django项目优化</a>
                            <div class="side-item-info">10.4k阅读 | 五天前</div>
                        </div>
                        <div class="side-bar-item">
                            <a href="blog.html" class="side-item-title">python解释器</a>
                            <div class="side-item-info">0.4k阅读 | 一小时前</div>
                        </div>
                        <div class="side-bar-item">
                            <a href="blog.html" class="side-item-title">web前段优化策略</a>
                            <div class="side-item-info">2.9k阅读 | 一周前</div>
                        </div>
                        <div class="side-bar-item">
                            <a href="blog.html" class="side-item-title">浅析Django项目优化</a>
                            <div class="side-item-info">1.4k阅读 | 两小时前</div>
                        </div>
                        <div class="side-bar-item">
                            <a href="blog.html" class="side-item-title">浅析Django项目优化</a>
                            <div class="side-item-info">4.1k阅读 | 两天前</div>
                        </div>

                    </div>
                </div>
            </div>
            -->

        </div>
    </div>
</div>
<div class="modal-footer">
    <address class="text-center">
        <p>420blog</p>
        <div href="#">first.last@example.com</div>
    </address>
</div>

</body>

</html>
