<%--
  Created by IntelliJ IDEA.
  User: kasia
  Date: 08/07/2023
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/css/style_usersList.css">
    <title> UsersCRUD</title>
</head>
<body>
<header>
    <h1 class = "header">Users CRUD</h1>
</header>

<div class="inside">
    <div class="container">
        <div class="left-section">
            <p> User's details:</p>
        </div>
        <div class="right-section">
            <button class = "button1"> <a href="/user/list"> Lista uzytkownikow </a></button>
        </div>
    </div>
<br>



    <table class="tab">
        <tbody class="td">
            <tr>
                <th class="th"> ID </th>
                <td>${user.id}</td></tr>
            <tr>
                <th class="th"> Nazwa </th>
                <td>${user.name}</td></tr>
            <tr>
                <th class="th"> Email</th>
                <td> ${user.email}</td>
            </tr>
        </tbody>
    </table>

</div>
</body>
</html>
