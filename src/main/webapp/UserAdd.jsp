<%--
  Created by IntelliJ IDEA.
  User: kasia
  Date: 08/07/2023
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UsersCRUD</title>
</head>
<body>
<div><button> <a href="/user/list"> User's list </a></button></div>
<br><br>
<div>
Add new User:

<form method="post" action="/user/add">
    Nazwa: <input type="text" name="name">
    Email: <input type="email" name="email">
    Password: <input type="password" name="password">
    <br>
    <button type="button"> Save </button>
</form>
</div>
</body>
</html>
