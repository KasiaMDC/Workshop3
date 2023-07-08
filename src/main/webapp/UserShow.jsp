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
    <title> UsersCRUD</title>
</head>
<body>
<p> User's details:</p>
<br>
<div>
<button> <a href="/user/list"> User's list </a></button>
</div>
<div>
    <table>
        <tbody>
            <tr>
                <th> ID </th>
                <td>${user.id}</td></tr>
            <tr>
                <th> User's name</th>
                <td>${user.name}</td></tr>
            <tr>
                <th> User's email</th>
                <td> ${user.email}</td>
            </tr>
        </tbody>
    </table>

</div>
</body>
</html>
