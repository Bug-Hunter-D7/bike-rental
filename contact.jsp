<%-- 
    Document   : contact
    Created on : 25 Oct 2025, 8:27:37 am
    Author     : DHINESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact page</title>
    </head>
    <body>
          <%
            try{
             String Name=request.getParameter("name");
             String Email=request.getParameter("email");
             String Message=request.getParameter("message");
           
             Class.forName("com.mysql.cj.jdbc.Driver");
             System.out.println("ok");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost/booking","root","1977");
             String query="Insert into  contact (Name,Email,Message) values(?,?,?)";
              PreparedStatement pstmt = con.prepareStatement(query);
              pstmt.setString(1, Name);
              pstmt.setString(2,Email);
              pstmt.setString(3,Message);
             
              int rows=pstmt.executeUpdate();
              if(rows>0){
              out.println("<script>");
              out.println("alert('Your Message Send successfully ! our team will reach you soon ');");
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
