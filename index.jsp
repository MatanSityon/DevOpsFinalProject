<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple JSP App</title>
</head>
<body>
    <h1>DevOps Fianl Project</h1>

    <!-- טופס עם שדה קלט וכפתור -->
    <form method="post">
        <label for="name">Please Enter Your Name</label>
        <input type="text" id="name" name="name" />
        <button type="submit">Send</button>
    </form>

    <%
        String name = request.getParameter("name");
        if (name != null && !name.trim().isEmpty()) {
    %>
        <p>Hello, <%= name %>!</p>
    <%
        }
    %>

    <p><a href="https://md.hit.ac.il/" target="_blank">Go to HIT moodle</a></p>
</body>
</html>
