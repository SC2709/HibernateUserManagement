<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial;
            background: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #aaa;
        }
        input {
            margin: 10px 0;
            padding: 10px;
            width: 100%;
        }
        input[type="submit"] {
            background: #4CAF50;
            color: white;
            border: none;
        }
    </style>
</head>
<body>
    <form action="login" method="post">
        <h2>Login</h2>
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="submit" value="Login" />
    </form>
</body>
</html>
