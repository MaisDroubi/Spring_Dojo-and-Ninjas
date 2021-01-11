<%--
  Created by IntelliJ IDEA.
  User: pccorner
  Date: ١١/٠١/٢٠٢١
  Time: ٠٧:٠٣ م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>New Ninja</title>
</head>
<body>
<div>
    <h1>Dojos N Ninjas</h1>
    <h2>Add a Ninja</h2>
    <form:form action="/ninjas" method="post" modelAttribute="ninja">
        <div class="form-group">
            <form:label path="dojo">Dojo Name</form:label>
            <form:errors path="dojo"/>
            <form:select class="form-control" path="dojo">
                <c:forEach items="${ dojos }" var="doj">
                    <option value="${ doj.id }">${ doj.name }</option>
                </c:forEach>
            </form:select>
        </div>
        <div class="form-group">
            <form:label path="firstName">First Name</form:label>
            <form:errors path="firstName"/>
            <form:input class="form-control" path="firstName"/>
        </div>
        <div class="form-group">
            <form:label path="lastName">Last Name</form:label>
            <form:errors path="lastName"/>
            <form:input class="form-control" path="lastName"/>
        </div>
        <div class="form-group">
            <form:label path="age">Age</form:label>
            <form:errors path="age"/>
            <form:input class="form-control" path="age"/>
        </div>
        <button>Add Ninja</button>
    </form:form>
</div>
</body>
</html>
