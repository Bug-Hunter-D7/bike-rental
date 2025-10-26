<%-- 
    Document   : Dashboard
    Created on : 12 Sept 2025, 3:05:57 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard page</title>
        <script src="https://kit.fontawesome.com/fa38005357.js" crossorigin="anonymous"></script>
    </head>
    <style> 
        
                body {
                margin-top: 100px;
                height: 100%;
                background-image: url("assets/harley.jpg");
                background-position: center center;
                background-repeat: no-repeat;
                background-size: cover; 
                background-attachment: fixed;
              }
             form {
                display: inline-block;
                }
            button{
                padding: 10px 15px;
                border:none;
                border-radius: 10px;
                background: rgba(255, 255, 255, 0.5);
                color: white;
                font-size: 20px;
                
            }  
            button:hover{
                background: #F5F5F5;
                color: #708090;
                box-shadow: 0 0 10px rgba(255, 255, 255, 0.2);
            }
         
           
        div {
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 8px 20px rgba(0,0,0,0.80); 
            color: #fff;
            padding: 50px 80px;
            border-radius: 5px;
            margin-left: 30%;
            max-width: 400px;
            text-align: center; 
        }


        label {
            font-size: 20px;
            display: block;
            margin-bottom: 5px;
            text-align: left;
            color: white;

        }

        input {
            width: 100%;
            margin-bottom: 20px;
            padding: 10px;
            border-radius: 5px;
            border: none;
            box-sizing: border-box;
            background: rgba(255, 255, 255, 0.3);
            box-shadow: 0 8px 20px rgba(0,0,0,0.80);
        }
        a{
            display: flex;
        }
        h2{
            color: white;
        }
        


    </style>
    <body>

        <div>  
            <h2>Login <i class="fa-solid fa-lock"></i></h2>
    <form action="Admin.jsp" method="post">
        <label>Admin</label> 
        <input type="text" name="username">
        <label>Password:</label>
        <input type="password" name="password">
        <button>Login</button>
    </form>
            <a>Forget password ?</a>
        </div>
    </body>
</html>
