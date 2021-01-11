<%--
  Created by IntelliJ IDEA.
  User: pccorner
  Date: ١١/٠١/٢٠٢١
  Time: ٠٧:٤٤ م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <h1>Dojos N Ninjas</h1>
    <h3><a href="/dojos">Dojos</a></h3>
    <a href="/ninjas/new">Add Ninja</a>
    <h2>All Ninjas</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Dojo</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ ninjas }" var="ninja">
            <tr>
                <td>${ ninja.firstName } ${ ninja.lastName }</td>
                <td>${ ninja.age }</td>
                <td>${ ninja.dojo.name }</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
