<%-- 
    Document   : Edit
    Created on : 12 Sept 2025, 5:16:46 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
         <%  
   try{
            /* TODO output your page here. You may use following sample code. */
            String id=request.getParameter("id");
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("ok");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/booking","root","1977");
            String query = "update customers set status='completed' where id = ? ";
            PreparedStatement pstmt = con.prepareStatement(query); 
            pstmt.setString(1, id);
            int rows = pstmt.executeUpdate();  
            if (rows > 0) {                      
                response.sendRedirect("Customers.jsp");
            } 
            con.close();
           
            
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
