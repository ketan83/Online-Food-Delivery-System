<%-- 
    Document   : modify_item
    Created on : Sep 26, 2019, 10:19:52 AM
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/takeaway";%>
<%!String user = "root";%>
<%!String psw = "Saurabh@9915";%>
<%
String id = request.getParameter("item_id");
String name=request.getParameter("item_name");
String amt=request.getParameter("item_amt");
if(id != null)
{
    Connection con = null;
    PreparedStatement ps = null;
    try
    {
        Class.forName(driverName);
        con = DriverManager.getConnection(url,user,psw);
        String sql="Update menu set item_name='"+name+"',item_amt='"+amt+"' where item_id='"+id+"'";
        Statement stmt=con.createStatement();
        int i=stmt.executeUpdate(sql);
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
      }
}
%>