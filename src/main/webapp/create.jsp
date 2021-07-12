<%--
  Created by IntelliJ IDEA.
  User: THANH
  Date: 7/12/2021
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div align="center">
    <a class="btn btn-outline-primary" href="/Servlet">BACK</a>
    <form method="post">

        <input type="hidden" name="action" value="add">
        name <input type="text" name="name"><br/>
        price <input type="text" name="price"><br/>
        quantity <input type="text" name="quantity"><br/>
        color <input type="text" name="color"><br/>
        describe <input type="text" name="describe"><br/>
        category <input type="text" name="category"><br/>


        <button class="btn btn-outline-primary" type="submit">add</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
