<%--
  Created by IntelliJ IDEA.
  User: kimyo
  Date: 9/6/2020
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>

    <form method="post" action="signIn">
        유저 아이디: <input typw="text" name="userId">
        비밀 번호: <input type="password" name="password">
        <input type="submit" value="로그인">
        <input type="button" onclick="window.location.href='/member/signUp'" value="회원 가입">
    </form>
</body>
</html>
