<%@ page import="org.hibernate.Session" %>
<%@ page import="model.User" %>
<%@ page import="util.HibernateUtil" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    Session hSession = HibernateUtil.getSessionFactory().openSession();
    User user = hSession.get(User.class, id);
    hSession.close();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
    <style>
        body { font-family: Arial; background: #e0f7fa; }
        form { margin: 100px auto; width: 300px; padding: 20px; background: white; border-radius: 8px; }
        input { width: 100%; padding: 10px; margin: 10px 0; }
    </style>
</head>
<body>
    <form action="update-user" method="post">
        <h2>Edit User</h2>
        <input type="hidden" name="id" value="<%= user.getId() %>" />
        <input type="text" name="username" value="<%= user.getUsername() %>" required />
        <input type="password" name="password" value="<%= user.getPassword() %>" required />
        <input type="email" name="email" value="<%= user.getEmail() %>" required />
        <input type="submit" value="Update User" />
    </form>
</body>
</html>
