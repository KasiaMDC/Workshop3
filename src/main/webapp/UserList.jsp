<%--
  Created by IntelliJ IDEA.
  User: kasia
  Date: 07/07/2023
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/css/style_usersList.css">
    <title>User List</title>
</head>
<body>
<header>
    <h1 class = "header">Users CRUD</h1>
</header>
<br>
<div class="inside">

    <button class = "button1"> <a href="/user/add"> Dodaj uzytkownika </a></button>
<br>
    <br>

    <table class="tab">
        <thead class="th">
            <tr>
                <th>id</th>
                <th>User's name</th>
                <th>Email</th>
                <th>Select</th>
            </tr>
        </thead>
        <tbody class="td">
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td>${user.id}</td>
                    <td> ${user.name}</td> <td> ${user.email}</td>
                    <td>
                        <a href="/user/delete?id=${user.id}">delete</a>
                        <a href="/user/edit?id=${user.id}">edit</a>
                        <a href="/user/show?id=${user.id}">show</a>
                        </td>
                </tr>
            </c:forEach>
         </tbody>
    </table>

</div>

</body>
</html>
