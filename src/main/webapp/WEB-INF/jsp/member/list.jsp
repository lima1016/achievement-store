<%--
  Created by IntelliJ IDEA.
  User: kimyo
  Date: 9/6/2020
  Time: 12:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${members}" var="member">
    <div>
        <p> 아이디 : ${member.memberId}</p>
        <p> 이름 : ${member.memberName}</p>
    </div>

</c:forEach>
</body>
</html>
