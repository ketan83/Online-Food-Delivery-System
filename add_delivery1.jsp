<%-- 
    Document   : add_delivery1
    Created on : Sep 28, 2019, 7:45:33 PM
    Author     : Administrator
--%>

<%@ page import="java.sql.*"%>
<%
    int id=0;
    String action=request.getParameter("action");
    if(action.equals("submit")){
        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String phone_no=request.getParameter("phone");
        String username=request.getParameter("username");
        String password=request.getParameter("cpassword"); 
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select db_id from delivery");
            if(rs.last()){
                    id=rs.getInt("db_id")+1;
                 }
            stmt.executeUpdate("insert into delivery values('"+id+"','"+name+"','"+address+"','"+phone_no+"','"+username+"','"+password+"')");
            stmt.executeUpdate("insert into dlogin values('"+username+"','"+password+"')");
            response.sendRedirect("welcome_admin.jsp");
            con.close();
        }catch(Exception e){out.println(e);}
    }
%> 




