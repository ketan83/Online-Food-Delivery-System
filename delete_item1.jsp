<%-- 
    Document   : delete_item1
    Created on : Sep 25, 2019, 7:47:34 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    int id=0,flag=0;
    String action=request.getParameter("action");
    if(action.equals("delete")){
        String name=request.getParameter("itemname");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from menu where item_name='"+name+"'");
            if(rs.next()==false){
                    flag=1;
                 }
            else{
                do{
                    flag=0;
                }while(rs.next());
                stmt.executeUpdate("delete from menu where item_name='"+name+"'");
                response.sendRedirect("welcome_admin.jsp");
            }
            if(flag==1)
            {
                response.sendRedirect("delete_item.jsp"); 
                %>
                <h3>Record Not Found</h3>
                <%
            }
            con.close();
        }catch(Exception e){out.println(e);}
    }
%>
