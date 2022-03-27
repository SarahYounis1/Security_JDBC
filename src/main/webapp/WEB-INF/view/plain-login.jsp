<%--
  Created by IntelliJ IDEA.
  User: SarahY
  Date: 3/23/2022
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Custom Login Page</title>
    <style>
    .failed {
        color: red;
    }
    </style>
</head>
<body>
<h3>My Custom Login Page</h3>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
method="post">

    <!--CHECK FOR LOGIN ERROR -->

    <c:if test ="${param.error != null }">
        <i class="failed"> Sorry ! You entered invalid Username or Password</i>
    </c:if>
    <p> USER NAME :<input type="text" name="username"/></p>

    <p> PASSWORD  :<input type="text" name="password"/></p>

    <input type="submit" value="Login"/>

</form:form>

</body>
</html>
