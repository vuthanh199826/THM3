<%--
  Created by IntelliJ IDEA.
  User: THANH
  Date: 7/12/2021
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<a href="/Servlet">Back</a>
<form  method="post">
    <c:if test="${product != null}">--%>
        <input type="hidden" name="id" value="<c:out value='${product.id}' />"/>
    </c:if>

   Name <input type="text" name="name" value="${product.name}"><br/>
    Price <input type="text" name="price" value="${product.price}"><br/>
    Quantity <input type="text" name="quantity" value="${product.quantity}"><br/>
    Color <input type="text" name="color" value="${product.color}"><br/>
    Describe <input type="text" name="describe" value="${product.describe}"><br/>
    Category <input type="text" name="category" value="${product.category}"><br/>
    <button class="btn btn-outline-primary" type="submit">save</button>

</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
