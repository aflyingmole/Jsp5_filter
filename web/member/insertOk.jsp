<%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-07-22
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>insertOk.jsp</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

%>
작성자 : ${param.writer} <br>
제목 : ${param.title} <br>
내용 : ${param.content} <br>
</body>
</html>
