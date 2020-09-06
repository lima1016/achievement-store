<%--
  Created by IntelliJ IDEA.
  User: kimyo
  Date: 9/6/2020
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 가입</title>
</head>
<body>

<div>
    <form method="post" action="signUp" name="form">
        이름: <input type="text" id="memberName" name="memberName">
        아이디: <input type="text" id="userId" name="userId">
        비밀번호: <input type="password" id="password" name="password">
        이메일: <input type="email" id="email" name="email" placeholder="useId@email.com">
        <input type="submit" value="회원가입">
    </form>
</div>
</body>
</html>
