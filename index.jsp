<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DevOps Final Project</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;500&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #2c3e50, #3498db);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 400px;
        }

        h1 {
            margin-bottom: 20px;
            font-weight: 500;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            margin-bottom: 20px;
            font-size: 16px;
        }

        button {
            background-color: #1abc9c;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #16a085;
        }

        a {
            color: #ecf0f1;
            text-decoration: underline;
            display: inline-block;
            margin-top: 15px;
        }

        .greeting {
            margin-top: 20px;
            font-size: 20px;
            color: #f1c40f;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>DevOps Final Project</h1>

        <form method="post">
            <label for="name">Please Enter Your Name:</label>
            <input type="text" id="name" name="name" placeholder="Your name here..." />
            <button type="submit">Send</button>
        </form>

        <%
            String name = request.getParameter("name");
            if (name != null && !name.trim().isEmpty()) {
        %>
            <div class="greeting">Hello, <%= name %>!</div>
        <%
            }
        %>

        <a href="https://www.hit.ac.il/">Go to HIT Website</a>
    </div>
</body>
</html>
