<%--
  Created by IntelliJ IDEA.
  User: kirchner
  Date: 14.05.18
  Time: 0:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <h1>Hello, world!</h1>
    <form action="/saveUserWithAvatarAndSendEmail" method="post" enctype="multipart/form-data">

        <label for="email">email</label>
        <input id="email" type="email" name="email" placeholder="email">
        <label for="file">avatar</label>
        <input id="file" type="file" name="file" placeholder="">
        <input type="submit" name="" placeholder="" id="btn">

    </form>
</body>
</html>
