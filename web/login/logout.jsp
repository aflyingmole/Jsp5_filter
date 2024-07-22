<%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-07-22
  Time: 오후 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //login/logout.jsp
    session.invalidate();
    response.sendRedirect(request.getContextPath() + "/main.jsp");
%>