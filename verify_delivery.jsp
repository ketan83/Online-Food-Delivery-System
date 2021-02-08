<%-- 
    Document   : verify_delivery
    Created on : Sep 30, 2019, 11:39:02 AM
    Author     : Administrator
--%>

<%@ page import="java.sql.*"%>
<%
    String action=request.getParameter("action");
    if(action.equals("Login")){
        String username=request.getParameter("username");
        String password=request.getParameter("password"); 
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from dlogin where username='"+username+"'and password='"+password+"'");
            if(rs.next()){
                response.sendRedirect("welcome_delivery.jsp");
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                    out.println("alert('Username or password incorrect');");
                    out.println("location='delivery_login.jsp';");
                    out.println("</script>");
            }
            con.close();
        }catch(Exception e){out.println(e);}
    }
%> 