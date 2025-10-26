<%-- 
    Document   : Booking
    Created on : 12 Sept 2025, 11:01:29 am
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Page</title>
    </head>
    <body>
        <style>
            body {
                background-image: url("assets/bg.jpg");
                background-position: center center;
                background-repeat: no-repeat;
                background-size: cover; 
                background-attachment: fixed;
              }
              h1{
               color:black;   
              }
             form {
                display: inline-block;
                }
           
            div {
               
                 background: rgba(255, 255, 255, 0.3);
                color: #fff;
                padding: 20px 80px;
                padding-bottom: 50px;
                border-radius: 5px;
                margin-left:35%;
                max-width: 400px;
                margin-top: 10%;
                text-align: center; 
                box-shadow: 0 8px 20px rgba(0,0,0,0.80); 
            }


            label {
                font-size: 20px;
                display: block;
                margin-bottom: 5px;
                text-align: left;
               

            }

            input {
                width: 100%;
                margin-bottom: 20px;
                padding: 10px;
                border-radius: 5px;
                box-sizing: border-box;
                border:none;
                background: rgba(255, 255, 255, 0.3);
                box-shadow: 0 8px 20px rgba(0,0,0,0.80);
            }
             button{
                padding: 10px 15px;
                border:none;
                border-radius: 10px;
                background: rgba(255, 255, 255, 0.5);
                color: black;
                font-size: 20px;
                
            }  
            button:hover{
                background: #F5F5F5;
                box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
            }


   

        </style>
        <div >
            <h1>Book Now</h1>
        <form action="Booked.jsp" method="post">
            <label>Name:</label>
            <input type="text" name="fullName" required>
             <label>Pickup Date:</label>
            <input type="date" name="pickup_date"required>
             <label>Return Date:</label>
             <input type="date" name="return_date" required>
            <button>Book</button>
        </form>
            </div>
    </body>
</html>
