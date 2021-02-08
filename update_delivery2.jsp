<%-- 
    Document   : update_delivery2
    Created on : Sep 29, 2019, 11:14:16 AM
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/takeaway";%>
<%!String user = "root";%>
<%!String psw = "Saurabh@9915";%>
<%
String id = request.getParameter("db_id");
String name=request.getParameter("name");
String address=request.getParameter("address");
String phone_no=request.getParameter("phone_no");
if(id != null)
{
    Connection con = null;
    PreparedStatement ps = null;
    try
    {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        String sql="Update delivery set name='"+name+"',address='"+address+"',phone_no='"+phone_no+"' where db_id='"+id+"'";
        Statement stmt=con.createStatement();
        int i=stmt.executeUpdate(sql);
        out.print(i);
        if(i>0)
        {
            out.println("Record Updated Successfully");
            response.sendRedirect("welcome_admin.jsp");
        }
        else
        {
            out.println("There is a problem in updating Record.");
        }
    }catch(SQLException sql){
        request.setAttribute("error", sql);
        out.println(sql);
      }
}
%>