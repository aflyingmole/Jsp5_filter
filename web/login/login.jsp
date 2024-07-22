<%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-07-15
  Time: 오전 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--에러메시지를 div에 출력해 보세요.
    잘못 입력된 아이디와 비밀번호가 박스에 그대로 남아있게
--%>
<%
    String errMsg = (String) request.getAttribute("errMsg");
    if (errMsg == null) {
        errMsg = "";
    }
%>
<h1>회원로그인</h1>
<form action="loginOk.jsp" method="post">
    아이디<input type="text" name="id" value="${param.id}"><br/>
    비밀번호<input type="password" name="pwd" value="${param.pwd}"><br/>
    <div><%=errMsg%>
    </div>
    <input type="submit" value="로그인">
</form>
</body>
</html>
