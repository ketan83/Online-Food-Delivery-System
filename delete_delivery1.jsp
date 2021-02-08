<%-- 
    Document   : delete_delivery1
    Created on : Sep 28, 2019, 8:04:32 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    int id=0,flag=0;
    String action=request.getParameter("action");
    if(action.equals("delete")){
        String name=request.getParameter("name");
        String username=request.getParameter("username");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            Statement stmt1=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from delivery where name='"+name+"'");
            ResultSet rs1=stmt1.executeQuery("select * from dlogin where username='"+username+"'");
            if(rs.next()==false){
                    flag=1;
                 }
            else{
                do{
                    flag=0;
                }while(rs.next());
                stmt.executeUpdate("delete from delivery where name='"+name+"'");
                stmt.executeUpdate("delete from dlogin where username='"+username+"'");
                response.sendRedirect("welcome_admin.jsp");
            }
            if(flag==1)
            {
                response.sendRedirect("delete_delivery.jsp"); 
                %>
                <h3>Record Not Found</h3>
                <%
            }
            con.close();
        }catch(Exception e){out.println(e);}
    }
%>