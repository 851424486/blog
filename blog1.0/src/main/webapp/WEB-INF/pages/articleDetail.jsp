<%--
  Created by IntelliJ IDEA.
  User: 41462
  Date: 2020/5/26
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>420blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>

<body>
<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">

            <form action="../firstpage" method="post" >
                <input type="submit" value="回到首页" style="height:50px; font-size:35px;" size=65 name="submit">
            </form>

        </div>
        <label class="toggle-label visible-xs-inline-block" for="toggle-checkbox">MENU</label>
        <input class="hidden" id="toggle-checkbox" type="checkbox">
        <div class="hidden-xs">
            <ul class="nav navbar-nav navbar-right">
                <!--
                <li><a href="">注册</a></li>
                -->
                <!--
                <form action="register" method="post" >
                    <input type="submit" value="注册账号" style="height:50px; font-size:35px;" size=65 name="submit">
                </form>
                -->
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="col-sm-8">
        <h1 class="blog-title">${article.title}</h1>
        <!--
        <div class="blog-info">
            <span class="avatar"><img src="image/v2-2d45613b0fb8cdd36f53c3b31d0c6ee8_hd.jpg" alt="avatar"></span>
            <span>散人</span> |
            <span>2.8K热度</span> |
            <span>5分钟前</span>
            <label class="label label-info">编程</label>
            <label class="label label-warning">博客</label>
            <label class="label label-success">Java</label>
        </div>
        -->
        <div class="blog-content">
            <blockquote>
                <p>作者:${article.writer}</p>
            </blockquote>
            <img src="${pageContext.request.contextPath}/images/blog.jpg">
            ${article.content}
        </div>

        <br>
        <br>
        <br>
        <!--显示评论-->
        <h2>评论：</h2>

        <div>------------------------------------------------------------------------------------------------------------------------------------------------------------</div>
        <c:forEach items="${comments}" var="comment">
            <div class="blog-list-item clearfix">

                    <a class="title">
                            ${comment.content}
                    </a>
                    <div>
                        <span>用户名:${comment.name}</span>
                    </div>
            </div>
        </c:forEach>

        <br>
        <br>

        <!--发表评论-->
        <div>
            <h2>发表评论:</h2>
                <form action="../addComment" method="post" role="form" class=" form-horizontal">
                    <input type="hidden" name="articleId" value="${article.id}" ><br>
                    用户名：<input type="text" name="username" /><br><br>
                    密码：  <input type="text" name="password" /><br><br>
                    评论内容：<textarea rows="10" cols="30" name="content"></textarea><br>
                    <input type="submit" value="提交"/><br>
                </form>
        </div>

    </div>

    <div class="col-sm-4 hidden-xs">

        <div>
            <iframe scrolling="no" src="https://tianqiapi.com/api.php?style=tw&skin=pitaya" frameborder="0" width="300" height="500" allowtransparency="true"></iframe>
        </div>
        <br>

        <div class="side-bar-card clearfix">
            <div class="col-sm-6">
                <img src="${pageContext.request.contextPath}/images/adver.jpg">
                <br>
                <img src="${pageContext.request.contextPath}/images/adver.jpg">
                <br>
                <img src="${pageContext.request.contextPath}/images/adver.jpg">
                <br>
                <img src="${pageContext.request.contextPath}/images/adver.jpg">
                <br>
                <img src="${pageContext.request.contextPath}/images/adver.jpg">
                <br>
            </div>
            <div class="col-sm-6 side-bar-introduction">
                <div class="">广告</div>
                <div class="side-bar-phone">联系qq：XXX</div>
            </div>
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
