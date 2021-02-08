<%-- 
    Document   : order1
    Created on : Oct 3, 2019, 12:50:10 PM
    Author     : Administrator
--%>
response.setContentType("text/html;charset=UTF-8");
<%@ page import="java.sql.*"%>
<%
    int id=0,amt=0,item_id=0;
    String action=request.getParameter("action");
    if(action.equals("Order")){
        String cust_id=request.getParameter("cust_id");
        int c=Integer.parseInt(cust_id);
        String item_name=request.getParameter("item_name");
        String item_amt=request.getParameter("item_amt");
        String quantity=request.getParameter("quantity");
        int a=Integer.parseInt(item_amt);
        int b=Integer.parseInt(quantity);
        amt=a*b;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            Statement stmt1=con.createStatement();
            Statement stmt2=con.createStatement();
            ResultSet rs=stmt.executeQuery("select count(*) from orders");
            ResultSet rs1=stmt1.executeQuery("select username from customer where cust_id='"+c+"'");
            ResultSet rs2=stmt2.executeQuery("select item_id from menu where item_name='"+item_name+"'");            
            while(rs.next())
                               {
                id = rs.getInt("count(*)");
            }
            if(rs1.next()){
                String cid=rs1.getString("username");
            }
            while(rs2.next()){
                item_id=rs2.getInt("item_id");
            }
            id++;
            stmt.executeUpdate("insert into orders values('"+id+"','"+item_id+"','"+item_name+"','"+item_amt+"','"+quantity+"','"+amt+"','"+c+"')");
            response.sendRedirect("welcome.jsp?username="+rs1.getString("username")+"");
            con.close();
        }catch(Exception e){out.println(e);}
    }
%> 