<%-- 
    Document   : Dashhome
    Created on : 12 Sept 2025, 4:18:27 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard Page</title>
        <script src="https://kit.fontawesome.com/fa38005357.js" crossorigin="anonymous"></script>
    </head>
    <style>
        body {
              
                background-image: url("assets/helmet.jpg");

                
                background-position: center center;

              
                background-repeat: no-repeat;

                
                background-size: cover; 
                background-attachment: fixed;
                
                font-family: 'Poppins', Oswald;
              }
        h1{
            text-align:center;
            font-family: 'Poppins', Oswald;  /* or Montserrat/Oswald */
            font-size: 2.5rem;                  
            font-weight: 600;
            letter-spacing: 1px;
            color: white;
            text-shadow: 0 2px 4px rgba(0,0,0,0.5);
                        
        }
            h3{
                 
                 display:inline;
                 
                 
            } 
            #head{
                 margin-left: 5%;
                 border-radius: 10px;
                 display: inline;
                 padding: 20px;
                background: rgba(255, 255, 255, 0.5);
             box-shadow: 0 8px 20px rgba(0,0,0,0.80);
             
            }
            #admin{
                
               color: black; 
                
            }
            #user{
                margin-left: 5px;
                color: snow;
            }
        
        table{
            margin-top: 1%;
            margin-left: 75px;
            border-radius: 12px; 
            background: rgba(255, 255, 255, 0.6);
             box-shadow: 0 8px 20px rgba(0,0,0,0.80); 
        }
        

        th,tr,td{
            
        }

       
          
        
        th{
            color:black;
        }
        
        th,td{
            
            padding: 15px 20px;
            
        }
              a{
            text-decoration: none;
            
        }
        button{
            border:none;
            padding:10px 20px;
            font-size: 20px;
            border:none;
            color:white; 
            border-radius: 10px;
            margin-top: 20px;
            background: rgba(255, 255, 255, 0.5);
            box-shadow: 0 8px 20px rgba(0,0,0,0.80);  
        }
        button:hover{
           background: #F5F5F5;
           color: black;
        }
        input{
            border:none;
            padding-top:10px;
            padding-left: 5px;
            padding-bottom:10px;
            font-size: 20px;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.5);
            box-shadow: 0 8px 20px rgba(0,0,0,0.80); 
           color:white;
        }
        #form{
            display: flex;
            margin-left:66%;
        }
        #search{
            display: flex;
            margin-left:68%;
        }
    </style>
    <body>
        <h1>CUSTOMER DETAILS</h1>
        
        <%
          session = request.getSession(); 
          String username =(String)session.getAttribute("username");
          out.println("<div id='head'>"+"<h3 id='admin'>Admin:</h3>"+"<h3 id='user'>"+username+"</h3>"+"</div>");
            
            %>
      
<!--        <div id="search">
           <form action="search.jsp">
               <input type="text" name="name" placeholder="Customer Name"> comment 
              <button>Search</button>
        </form>
           </div> -->
              <div id="form">
           <form action="Edit.jsp">
               <input type="number" name="id" placeholder="Customer ID"><!-- comment -->
            <button>Completed</button>
        </form>
           </div> 
         <%  
         try{
            
           
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("ok");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/booking","root","1977");
       
            String query = "SELECT * FROM customers";
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(query);
      
                      
            out.println("<table>");
            out.println("<tr><th>ID</th><th>NAME</th><th>CONTACT</th><th>AGE</th><th>GENDER</th><th>CITY</th><th>STATE</th><th>PINCODE</th><th>PICKUP DATE</th><th>RETURN DATE</th><th>PAYMENT</th><th>STATUS</th></tr>");
                while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("id") + "</td>");
                out.println("<td>" + rs.getString("name") + "</td>");
                out.println("<td>" + rs.getString("phone_no") + "</td>");
                out.println("<td>" + rs.getString("age") + "</td>");
                out.println("<td>" + rs.getString("gender") + "</td>");
                out.println("<td>" + rs.getString("city") + "</td>");
                out.println("<td>" + rs.getString("state") + "</td>");
                out.println("<td>" + rs.getString("pincode") + "</td>");
                out.println("<td>" + rs.getString("pickup_date") + "</td>");
                out.println("<td>" + rs.getString("return_date") + "</td>");
                out.println("<td>"+"₹"+"\t" + rs.getString("payment") + "</td>");
                out.println("<td>" + rs.getString("status")+"</td>");
                out.println("</tr>");
            }
            out.println("</table>");
           
        
        }
    
           catch(ClassNotFoundException ex)
             {
               out.println(ex.getMessage());
             }
           catch(SQLException ex)
             {
                out.println(ex.getMessage());
             }

          %>   
          
          
    </body>
</html>
