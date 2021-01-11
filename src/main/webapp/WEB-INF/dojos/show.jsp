<%--
  Created by IntelliJ IDEA.
  User: pccorner
  Date: ١١/٠١/٢٠٢١
  Time: ٠٧:٤٣ م
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <div>
      <h1>Dojos N Ninjas</h1>
      <h3><a href="/dojos">Dojos</a></h3>
      <h2>${ dojo.name } Area Ninjas</h2>
      <table class="table table-hover">
          <thead>
          <tr>
              <th>Name</th>
              <th>Age</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${ dojo.ninjas }" var="ninja">
              <tr>
                  <td>${ ninja.firstName } ${ ninja.lastName }</td>
                  <td>${ ninja.age }</td>
              </tr>
          </c:forEach>
          </tbody>
      </table>
  </div>
  </body>
</html>
