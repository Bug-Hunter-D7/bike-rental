<%-- 
    Document   : Admin
    Created on : 12 Sept 2025, 3:13:15 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
          <%  
    try {
        String name = request.getParameter("username");
        String password = request.getParameter("password");

        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("ok");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/users","root","1977");
        Statement stmt = con.createStatement();
        String query = "SELECT * FROM users WHERE name='" + name + "' AND password='" + password + "'";
        ResultSet rs = stmt.executeQuery(query);  
         if (rs.next()) {
            response.sendRedirect("Customers.jsp");
        } else {
            out.println("<script>");
            out.println("alert('Unauthorised !');");
            out.println("window.location='login.jsp';"); 
            out.println("</script>");
        }

        rs.close();
        stmt.close();
        con.close();
    } catch(ClassNotFoundException ex) {
        out.println(ex.getMessage());
    } catch(SQLException ex) {
        out.println(ex.getMessage());
    }
             String username = request.getParameter("username"); 
         
            out.println(username);
          
//            session:
            session = request.getSession(); 
            session.setAttribute("username", username);
        
        
%>
    </body>
</html>
