<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Edit User</title>
</head>

<body>
<div align="center">
        <h2>Edit User</h2>
        <form:form action="update" method="post" modelAttribute="user">
            <table border="0" cellpadding="5">
                <tr>
                    <td>ID: </td>
                    <td>${user.userId}
                        <form:hidden path="userId"/>
                    </td>
                </tr>
                <tr>
                     <td>Login: </td>
                     <td>${user.username}
                         <form:hidden path="username"/>
                     </td>
                </tr>
                <tr>
                    <td>First Name: </td>
                    <td><form:input path="firstName" /></td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><form:input path="lastName" /></td>
                    </tr>
                <tr>
                    <td>Email: </td>
                    <td><form:input path="email" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Edit"></td>
                </tr>
            </table>
        </form:form>
        <a href="/user">Users</a>
        <a href="/">Home</a>
    </div>
</body>
</html>