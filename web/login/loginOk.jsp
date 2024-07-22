<%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-07-15
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test04/loginOk.jsp</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    if(id.equals("test") && pwd.equals("1234")) {
        session.setAttribute("id", id);
        response.sendRedirect(request.getContextPath() + "/main.jsp");
    } else {
        request.setAttribute("errMsg", "아이디 또는 비밀번호가 맞지 않습니다");

        RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath() + "/login/login.jsp");
        rd.forward(request, response);
    }
%>
</body>
</html>
