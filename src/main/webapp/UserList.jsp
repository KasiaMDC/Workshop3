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
    <title>User List</title>
</head>
<body>
<header>
    <h1>Users CRUD</h1>
</header>
<br>
<div>

    <button> <a href="/user/add"> Add user </a></button>
<br>
    <br>
</div>
<div>
    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>User's name</th>
                <th>Email</th>
                <th>Select</th>
            </tr>
        </thead>
        <tbody>
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
