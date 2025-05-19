<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DevOps Final Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
            background-color: #f4f4f4;
        }
        .container {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: auto;
        }
        .greeting {
            margin-top: 20px;
            font-size: 1.2em;
            color: #333;
        }
        button {
            padding: 10px 20px;
            font-size: 1em;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the DevOps Final Project</h1>
        <form method="get">
            <label for="name">Enter your name:</label><br>
            <input type="text" id="name" name="name"><br>
            <button type="submit">Submit</button>
        </form>

        <%
            String name = request.getParameter("name");
            if (name != null && !name.trim().isEmpty()) {
        %>
            <div class="greeting">Hello, <%= name %>!</div>
        <%
            }
        %>

        <form action="about.jsp">
            <button type="submit">About</button>
        </form>
    </div>
</body>
</html>
