<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Custom Login Page</title>
</head>
<body>
    <h1>Custom Login Page</h1>
    <h2><c:out value="${error}" /></h2>
    <h2><c:out value="${logout}" /></h2>
    
    <form method='post' action="/login">
        <div>
            <input type='text' name='username' placeholder='Enter username'>
        </div>
        <div>
            <input type='password' name='password' placeholder='Enter password'>
        </div>
        <div>
            <input type="submit">
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</body>
</html>
