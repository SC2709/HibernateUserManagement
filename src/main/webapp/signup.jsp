<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e0f7fa;
        }
        form {
            margin: 100px auto;
            width: 300px;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
        }
        input[type="submit"] {
            background-color: #00796b;
            color: white;
            border: none;
            cursor: pointer;
        }
        a {
            display: block;
            margin-top: 10px;
            text-align: center;
            color: #00796b;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form action="signup" method="post">
        <h2>Signup</h2>
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="email" name="email" placeholder="Email" required />
        <input type="submit" value="Signup" />
        <a href="login.jsp">Already have an account? Login</a>
    </form>
</body>
</html>
