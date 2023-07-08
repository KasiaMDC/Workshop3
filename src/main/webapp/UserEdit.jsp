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
Edit User:

<form method="post" action="/user/edit">
    <input value="${user.id}" name="id" type="hidden"/>
    Nazwa: <input value="${user.name}" name="name" type="text"/>
    Email: <input value="${user.email}"  name="email" type="email"/>
    Password: <input type="password" name="password"/>
    <br>
    <button type="submit"> Save </button>
</form>
</div>
</body>
</html>
