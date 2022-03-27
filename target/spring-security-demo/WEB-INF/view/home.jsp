<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>
        Company Home Page
    </title>
</head>
<body>
<h2> Company Home Page - Main12</h2>
<hr>
<p>
welcome to the home page</p>

<hr>
<p>
    <!-- Print User Id AND Roles -->
    User: <security:authentication property="principal.username" />
    <br><br>
    Role(s) : <security:authentication property="principal.authorities" />
</p>
<!-- add link ref to /leaders this is for managers-->

<security:authorize access="hasRole('MANAGER')">
<p>
    <a href="${pageContext.request.contextPath}/leaders"> LeaderShip Meeting</a>
    (Only For Managers)
    </p>

</security:authorize>

<security:authorize access="hasRole('ADMIN')">
<p>
    <a href="${pageContext.request.contextPath}/systems"> IT Systems Meeting</a>
    (Only For Admins)
</p>

</security:authorize>

<!-- add Logout Button -->
<form:form action="${pageContext.request.contextPath}/logout" method="post">

    <input type="submit" value="Logout"/>
</form:form>
</body>
</html>