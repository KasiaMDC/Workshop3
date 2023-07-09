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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/css/style_usersList.css">
    <title>UsersCRUD</title>
</head>
<body>
<header>
    <h1 class = "header">Users CRUD</h1>
</header>
<div><button class = "button1"> <a href="/user/list"> User's list </a></button></div>
<br><br>
<div class="inside">
Edycja uzytkownika:

<form method="post" action="/user/edit">
    <input value="${user.id}" name="id" type="hidden"/>
    Nazwa: <input value="${user.name}" name="name" type="text"/>
    Email: <input value="${user.email}"  name="email" type="email"/>
    Haslo: <input type="password" name="password"/>
    <br>
    <button type="submit"> Zapisz </button>
</form>
</div>
</body>
</html>
