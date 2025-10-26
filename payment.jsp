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
        <title>Payment Page</title>
        <script src="https://kit.fontawesome.com/fa38005357.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <style>
             body {
              
                background-image: url("assets/bg2.jpg");
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
                margin-top: 50px;
                border-radius: 10px;
                color:#3A81F1;
            }  
            .fa-google-pay{
                font-size: 30px;
                
            }
            .fa-lock{
                font-size: 30px;
                color: black;
                margin-left: 5px;
            }
            
       

            h1{
                color: black;
            }
           
        #form {
             background: rgba(255, 255, 255, 0.2);
             box-shadow: 0 8px 20px rgba(0,0,0,0.80); 
            color: #fff;
            padding: 50px 80px;
            padding-bottom: 100px;
            border-radius: 10px;
            margin-left: 30%;
            margin-top: 10%;
            max-width: 400px;
            text-align: center; 
            
        }


        label {
            font-size: 20px;
            display: block;
            margin-bottom: 5px;
            text-align: left;
            color: black;

        }

        input {
            width: 100%;
            margin-bottom: 20px;
            padding: 10px;
            border-radius: 5px;
            box-sizing: border-box;
            border:none;
           
        }
        </style>
        <div id="form">
            <h1>PAYMENT  <i class="fa-solid fa-lock"></i></h1>
        <form action="payment.jsp"method="post">
            <label>Name:</label>
            <input type="text" name="fullName" required>
             <label>Amount:</label>
             <input type="number" name="payment" required>
            <button><i class="fa-brands fa-google-pay"></i></button>
            
        </form>
        </div>
       <%
            try{
             String name=request.getParameter("fullName");
             String payment=request.getParameter("payment");
             Class.forName("com.mysql.cj.jdbc.Driver");
             System.out.println("ok");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost/booking","root","1977");
             String query="update customers set payment=?  where name = ?";
              PreparedStatement pstmt = con.prepareStatement(query);
              pstmt.setString(1, payment);
              pstmt.setString(2, name);
              int rows=pstmt.executeUpdate();
              if(rows>0){
               out.println("<script>");
            out.println("alert('Your Bike has been booked successfully !');");
            out.println("window.location='index.html';"); 
            out.println("</script>");
           }
              con.close();
            }
            catch(ClassNotFoundException ex){
              out.println(ex.getMessage());
            }
            catch(SQLException ex){
                out.println(ex.getMessage());
            }
            %>
    </body>
</html>
