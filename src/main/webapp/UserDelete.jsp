<%--
  Created by IntelliJ IDEA.
  User: kasia
  Date: 08/07/2023
  Time: 22:20
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
    <script src="/javascript/delete.js"></script>
</head>
<body>
<header>
    <h1 class = "header">Users CRUD</h1>
</header>
<div class="inside">
    Jestes pewien, ze chcesz usunac uzytkownika o ID ${id}?
    <button type="button" id="delete-confirm" data-user-id="${id}">Tak</button>
    <button type="button" id="delete-cancel"> Nie </button>
</div>
</body>
</html>
