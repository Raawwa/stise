<%@ page import="java.util.regex.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Process</title>
</head>
<body>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        boolean isError = false;

        // Simple validation
        if(name == null || email == null || password == null || 
           name.isEmpty() || email.isEmpty() || password.isEmpty()) {
            isError = true;
            out.println("<p>Error: All fields are required!</p>");
        } else if (!email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            isError = true;
            out.println("<p>Error: Invalid email format!</p>");
        }

        if (!isError) {
            // Forward to welcome page
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        } else {
            out.println("<a href='index.jsp'>Go back to registration</a>");
        }
    %>
</body>
</html>
