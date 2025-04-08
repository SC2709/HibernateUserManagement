<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form action="signup" method="post">
        <h2>Add New User</h2>
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="email" name="email" placeholder="Email" required />
        <input type="submit" value="Add User" />
    </form>
</body>
</html>
