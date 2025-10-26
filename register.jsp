<%-- 
    Document   : Book
    Created on : 11 Sept 2025, 5:25:39 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form page</title>
    </head>
    <body> 
         <style>
         body {
            
                height: 100%;
                background-image: url("assets/bike-bg.jpg");
                background-position: center center;
                background-repeat: no-repeat;
                background-size: cover; 
                background-attachment: fixed;
              }
              h1{
                   font-family: 'Poppins', sans-serif;  
                font-size: 2.2rem;
                color: #fff;                         
                text-shadow: 0 2px 4px rgba(0,0,0,0.6); 
                letter-spacing: 1px;
                margin-bottom: 1.2rem;
                text-align: center;
              }
            #registrationForm {
              background: rgba(255, 255, 255, 0.2);
              box-shadow: 0 8px 20px rgba(0,0,0,0.80); 
              max-width: 600px;
              padding: 20px;
              color: #fff;
              border-radius: 12px;
              font-family: Arial, sans-serif;
              margin-left: 28%;

            }
            input{
                background: rgba(255, 255, 255, 0.3);
                 box-shadow: 0 8px 20px rgba(0,0,0,0.80);
            }
            
            .input-box {
              margin-bottom: 1.2rem;
              display: flex;
              flex-direction: column;
              gap:20px;
            }

            .input-box label {
              font-weight: bold;
           
              color: black;
            }

            .input-box input {
              padding: 10px;
              border: 1px solid #ccc;
              border-radius: 8px;
              font-size: 1rem;
            }

            .column {
              display: flex;
              gap: 20px;
              flex-wrap: wrap;
            }

            .column .input-box {
              flex: 1;
              min-width: 45%;
            }

            .gender-box {
              margin-bottom: 1.2rem;
              
            }

            .gender-box h3 {
              margin-bottom: 0.5rem;
              color: black;
            }
            .gender-box{
                color: black;
            }
            .gender-option {
              display: flex;
              gap: 20px;
            }

            .gender {
              display: flex;
              align-items: center;
              gap: 6px;
              
              
            }

            button {
              background: rgba(255, 255, 255, 0.3);
              box-shadow: 0 8px 20px rgba(0,0,0,0.80);
              margin-left: 35%;
              color: black;
              padding: 12px 20px;
              border: none;
              border-radius: 8px;
              cursor: pointer;
              font-size: 1rem;
              transition: background-color 0.3s;
            }

             button:hover{
                background: #F5F5F5;
                color: #708090;
                box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
            }
    </style>
    <body>
        <form  action="registered.jsp" method="post"  id="registrationForm" ">
  <div class="input-box">
      <h1>Register Form</h1>
    <label >Full Name</label>
    <input type="text" name="fullName"  placeholder="Enter full name" required>
  </div>
  <div class="column">
    <div class="input-box">
      <label>Phone Number</label>
      <input type="tel" name="phone"  placeholder="Enter phone number" required>
    </div>
    <div class="input-box">
      <label>Age</label>
      <input type="number" name="age"required>
    </div>
  </div>

  <div class="gender-box">
    <h3>Gender</h3>
    <div class="gender-option">
      <div class="gender">
        <input type="radio"  name="gender" value="male">
        <label>Male</label>
      </div>
      <div class="gender">
        <input type="radio"  name="gender" value="female">
        <label>Female</label>
      </div>
    </div>
  </div>

  <div class="input-box">
    <label>Address</label>
    <input type="text"  name="city" placeholder="Enter your city" required>
    <input type="text" name="state" placeholder="Enter your state" required>
    <input type="text" name="postalcode" placeholder="Enter postal code" required>
  </div>
  <button>Register</button>
</form>
      
        
        
    </body>
</html>
