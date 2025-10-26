<%-- 
    Document   : registered
    Created on : 12 Sept 2025, 11:33:11 am
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
          <%
            try{
             String name=request.getParameter("fullName");
             String phone_no=request.getParameter("phone");
             String age=request.getParameter("age");
             String gender=request.getParameter("gender");
             String city=request.getParameter("city");
             String state=request.getParameter("state");
             String pincode=request.getParameter("postalcode");
           
             Class.forName("com.mysql.cj.jdbc.Driver");
             System.out.println("ok");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost/booking","root","1977");
             String query="Insert into  customers (name,phone_no,age,gender,city,state,pincode) values(?,?,?,?,?,?,?)";
              PreparedStatement pstmt = con.prepareStatement(query);
              pstmt.setString(1, name);
              pstmt.setString(2,phone_no);
              pstmt.setString(3,age);
              pstmt.setString(4,gender);
              pstmt.setString(5,city);
              pstmt.setString(6,state);
              pstmt.setString(7,pincode);
              int rows=pstmt.executeUpdate();
              if(rows>0){
              out.println("<script>");
              out.println("alert('Registered successfully ! Now you can book your bike ');");
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
