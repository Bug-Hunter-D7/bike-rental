<%-- 
    Document   : Booked
    Created on : 12 Sept 2025, 11:52:23 am
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
        <%
            
            try{
             String name=request.getParameter("fullName");
//             String email=request.getParameter("email");
             String pickup_date=request.getParameter("pickup_date");
             String return_date=request.getParameter("return_date");
             Class.forName("com.mysql.cj.jdbc.Driver");
             System.out.println("ok");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost/booking","root","1977");
//             String query = "update student set name=?, degree =?, branch=?, year=?, location=?, mobile_no=? where roll_no = ? ";
             String query="update customers set pickup_date=? , return_date=? where name = ?";
              PreparedStatement pstmt = con.prepareStatement(query);
              pstmt.setString(1, pickup_date);
              pstmt.setString(2, return_date);
              pstmt.setString(3, name);
//              pstmt.setString(2, email);
              int rows=pstmt.executeUpdate();
              if(rows>0){
              response.sendRedirect("payment.jsp");
              }
              else{
              out.println("<script>");
              out.println("alert('Unknown User please Register !');");
              out.println("window.location='register.jsp';"); 
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
