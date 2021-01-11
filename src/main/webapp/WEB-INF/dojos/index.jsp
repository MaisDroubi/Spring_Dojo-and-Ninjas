<%--
  Created by IntelliJ IDEA.
  User: pccorner
  Date: ١١/٠١/٢٠٢١
  Time: ٠٧:٤٠ م
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
    <h1>Dojos add Ninjas</h1>
    <h3><a href="/ninjas">Ninjas</a></h3>
    <a href="/dojos/new">Add Dojo</a>
    <h2>All Dojos</h2>
    <ul>
        <c:forEach items="${ dojos }" var="dojo">
            <li><a href="/dojos/${ dojo.id }">${ dojo.name }</a></li>
        </c:forEach>
    </ul>
</div>
</body>
</html>
