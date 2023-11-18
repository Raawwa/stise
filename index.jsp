<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
    <h2>User Registration Form</h2>
    <form action="register.jsp" method="post">
        Name: <input type="text" name="name" required /><br>
        Email: <input type="email" name="email" required /><br>
        Password: <input type="password" name="password" required /><br>
        <input type="submit" value="Register" />
    </form>
</body>
</html>
