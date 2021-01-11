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
    <title>New dojo</title>
</head>
<body>
<div>
    <h1>Dojos N Ninjas</h1>
    <h2>Add a Dojo</h2>
    <form:form action="/dojos" method="post" modelAttribute="dojo">
        <div class="form-group">
            <form:label path="name">Dojo Name</form:label>
            <form:errors path="name"/>
            <form:input class="form-control" path="name"/>
        </div>
        <button>Add Dojo</button>
    </form:form>
</div>
</body>
</html>
