<%--
  Created by IntelliJ IDEA.
  User: 41462
  Date: 2020/5/29
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="UTF-8">
    <title>420blog</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>
        body{
            padding:0;
            margin:0;
        }
    </style>
</head>

<body>
<div class="container" id="login">
    <div class="row">
        <div class="text-center"><h3>请输入</h3></div>
    </div>

    <div class="row table-bordered">

        <div class="col-md-3">
        </div>

        <!--
        <div class="col-md-6">

            <p>请输入你的用户名和密码</p>
            <form action="identityCheck" method="post" role="form" class=" form-horizontal">
                用户名：<input type="text" name="username" /><br/>
                密码：<input type="text" name="password" /><br/>
                <input type="submit" value="进行身份验证"/><br/>
            </form>

            <form action="articleSave" method="post">

                文章标题：<input type="text" name="title" /><br/>

                文章内容：<input type="text" name="content" /><br/>

                文章内容：<textarea rows="10" cols="90" name="content">
                    </textarea><br/>

                作者名：<input type="text" name="writer" /><br/>

                <input type="submit" value="发布文章"/><br/>
            </form>
        </div>
        -->

        <div class="col-md-6">

            <p>请输入你的用户名和密码</p>
            <form action="addArticle" method="post" role="form" class=" form-horizontal">
                用户名：<input type="text" name="username" /><br/>
                密码：<input type="text" name="password" /><br/>

                文章标题：<input type="text" name="title" /><br/>

                文章内容：<textarea rows="10" cols="90" name="content">
                    </textarea><br/>

                <!--作者名：<input type="text" name="writer" /><br/>-->

                <input type="submit" value="发布文章"/><br/>
            </form>

        </div>

        <div class="col-md-3">
        </div>

    </div>

</div>

</body>

</html>
