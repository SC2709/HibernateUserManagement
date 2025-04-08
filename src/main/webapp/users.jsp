<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Users</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h2>Users List</h2>
    <a href="add-user.jsp">Add New User</a>
    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th><th>Username</th><th>Email</th><th>Actions</th>
        </tr>
        <%
            List<User> list = (List<User>) request.getAttribute("users");
            if (list != null && !list.isEmpty()) {
                for (User u : list) {
        %>
        <tr>
            <td><%= u.getId() %></td>
            <td><%= u.getUsername() %></td>
            <td><%= u.getEmail() %></td>
            <td>
                <a href="edit-user.jsp?id=<%= u.getId() %>">Edit</a>
               <a href="delete-user?id=<%= u.getId() %>" onclick="return confirm('Are you sure you want to delete?');">Delete</a>

            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="4">No users found.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
