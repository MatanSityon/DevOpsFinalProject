<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DevOps Final Project</title>
    <style>
        /* רקע כללי */
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* כרטיס מרכזי */
        .container {
            background-color: #ffffff;
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            text-align: center;
            width: 100%;
            max-width: 500px;
        }

        h1 {
            color: #333;
            margin-bottom: 25px;
        }

        label {
            font-size: 1.1em;
            color: #555;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 2px solid #74ebd5;
            border-radius: 8px;
            font-size: 1em;
        }

        .btn {
            background-color: #4a90e2;
            color: white;
            border: none;
            padding: 12px 25px;
            margin: 10px;
            border-radius: 8px;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #357ab7;
        }

        .greeting {
            margin-top: 20px;
            font-size: 1.3em;
            color: #2c3e50;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the DevOps Final Project</h1>

        <form method="get">
            <label for="name">Enter your name:</label><br>
            <input type="text" id="name" name="name">
            <br>
            <button class="btn" type="submit">Submit</button>
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
            <button class="btn" type="submit">About</button>
        </form>
    </div>
</body>
</html>
