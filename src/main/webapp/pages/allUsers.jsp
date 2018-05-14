<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kirchner
  Date: 14.05.18
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${users}" var="user">

    <div>

        <h3>${user.email}</h3>
        <img src="${user.avatar}" alt="">

    </div>

</c:forEach>
</body>
</html>
