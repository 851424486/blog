<%--
  Created by IntelliJ IDEA.
  User: 41462
  Date: 2020/5/29
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
        #bg{width:100%;height:100%;position:absolute;z-index:-1;opacity: 0.8}
        #login{position:absolute;left:22.5%;top:40%;margin-left:-150px;margin-top:-100px; }
    </style>
</head>

<body>
<div class="container" id="login">
    <div class="row">
        <div class="text-center"><h3> Please Register</h3></div>
    </div>

    <div class="row table-bordered">
        <div class="col-md-6">
            <h3 class="text-center text-capitalize"> 420blog </h3>
            <p>请注册</p>
            <!--
            <blockquote class="blockquote-reverse">
                <p>stay hungry stay foolish<cite title="lincoln">————Ahrabam Lincoln</cite></p>
            </blockquote>
            -->
        </div>
        <div class="col-md-6">
            <br>
            <form action="registerSuccess" method="post" role="form" class=" form-horizontal">
                用户名：<input type="text" name="username" /><br/>
                密码：<input type="text" name="password" /><br/>
                <input type="submit" value="注册"/><br/>
            </form>
        </div>
    </div>

</div>

<!--
<img id="bg" src="./image/1.jpg" alt="..." class="img-rounded img-responsive">
-->
</body>

</html>
