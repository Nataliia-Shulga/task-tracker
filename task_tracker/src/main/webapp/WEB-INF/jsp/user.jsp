<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body>
<div>
  <table>
    <thead>
    <th>Login</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>

    </thead>
    <c:forEach items="${allUsers}" var="user">
      <tr>
        <td>${user.username}</td>
        <td>${user.firstName}</td>
        <td>${user.lastName}</td>
        <td>${user.email}</td>

        <td>
           <form action="${pageContext.request.contextPath}/user" method="post">
              <input type="hidden" name="userId" value="${user.userId}"/>
              <input type="hidden" name="action" value="delete"/>
              <button type="submit">Delete</button>
           </form>
        </td>
        <td>
           <form action="${pageContext.request.contextPath}/updateUser" method="post">
                 <input type="hidden" name="userId" value="${user.userId}">
                 <input type="hidden" name="action" value="update"/>
                 <button type="submit">Edit</button>
           </form>
        </td>
      </tr>
    </c:forEach>
  </table>
  <a href="/">Home</a>
</div>
</body>
</html>