<%--
  Created by IntelliJ IDEA.
  User: 86156
  Date: 2024/3/10
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var email = document.getElementById("email").value;
            var birthdate = document.getElementById("birthdate").value;

            if (username === "") {
                alert("Username is required");
                return false;
            }

            if (password.length < 8) {
                alert("Password must be at least 8 characters long");
                return false;
            }

            var emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if (!email.match(emailPattern)) {
                alert("Please enter a valid email address");
                return false;
            }

            var birthdatePattern = /^\d{4}-\d{2}-\d{2}$/;
            if (!birthdate.match(birthdatePattern)) {
                alert("Please enter a valid birthdate in yyyy-dd-mm format");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
<h1>User Registration</h1>
<form action="registerServlet" method="post" onsubmit="return validateForm()">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <label for="email">Email:</label>
    <input type="text" id="email" name="email" required><br><br>

    <label for="birthdate">Birthdate:</label>
    <input type="text" id="birthdate" name="birthdate" placeholder="yyyy-dd-mm" required><br><br>

    <input type="submit" value="Register">
</form>
</body>
</html>
