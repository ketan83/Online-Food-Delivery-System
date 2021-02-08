<%-- 
    Document   : add_item1
    Created on : Sep 25, 2019, 4:51:07 PM
    Author     : Administrator
--%>

<%@ page import="java.sql.*"%>
<%
    int id=0;
    String action=request.getParameter("action");
    if(action.equals("submit")){
        String name=request.getParameter("itemname");
        String amount=request.getParameter("itemamount");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select item_id from menu");
            if(rs.last()){
                    id=rs.getInt("item_id")+1;
                 }
            stmt.executeUpdate("insert into menu values('"+id+"','"+name+"','"+amount+"')");
            response.sendRedirect("add_item.jsp");
            con.close();
        }catch(Exception e){out.println(e);}
    }
%>
