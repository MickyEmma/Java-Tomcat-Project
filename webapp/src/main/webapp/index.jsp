<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to DevOps World michael and jimmy</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #3c3b3f, #605c3c);
            color: #f0f8ff;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        header {
            background-color: #ff6f61;
            padding: 20px;
            width: 100%;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #fdfc47;
            font-size: 2.5em;
            text-shadow: 2px 2px #000;
        }
        p {
            font-size: 1.2em;
            margin: 10px;
        }
        .message-box {
            background-color: #282828;
            padding: 30px;
            border-radius: 10px;
            width: 50%;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
        }
        .dynamic-content {
            color: #ffd700;
            font-weight: bold;
            animation: pulse 2s infinite;
        }
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.1); }
            100% { transform: scale(1); }
        }
        footer {
            margin-top: 20px;
            color: #ccc;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to DevOps World Benjamin Baden</h1>
    </header>
    <div class="message-box">
        <%
            String username = request.getParameter("username");
            if (username != null && !username.isEmpty()) {
                out.println("<p class='dynamic-content'>Mr. " + username + ", welcome to DevOps!</p>");
                out.println("<p>We are currently on Jenkins. You have been awesome. Keep it up!</p>");
                out.println("<p>Remember, <strong>DevOps is the goal!!!</strong></p>");
            } else {
                out.println("<p>Hello Ben,You Have been awesome, keep it up, DevOps is the Goal!!!.</p>");
            }
        %>
    </div>
    <footer>
        <p>New Vision Institute Of Technology Is The Best Place To Be</p>
    </footer>
</body>
</html>
