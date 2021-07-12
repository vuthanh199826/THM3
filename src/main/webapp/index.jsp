<%--
  Created by IntelliJ IDEA.
  User: THANH
  Date: 7/12/2021
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  </head>
  <body>
  <div align="center">
    <a class="btn btn-outline-primary" href="/Servlet">HOME</a>
    <form action="" method="post">
      <input type="hidden" name="action" value="search">
      <button class="btn btn-outline-primary" type="submit">Search</button> <input type="text" name="search">
    </form>
    <a class="btn btn-outline-primary" href="/Servlet?action=add">add</a>

  <table border="1">
    <tr>

    </tr>
    <c:forEach items="${products}" var="product">
      <tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>
        <td>${product.quantity}</td>
        <td>${product.color}</td>
        <td>${product.describe}</td>
        <td>${product.category}</td>
        <td><a class="btn btn-outline-primary" href="/Servlet?action=delete&id=${product.id}">delete</a></td>
        <td><a class="btn btn-outline-primary" href="/Servlet?action=edit&id=${product.id}">edit</a></td>
      </tr>
    </c:forEach>

  </table>

  </div>
  $END$
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>

</html>
