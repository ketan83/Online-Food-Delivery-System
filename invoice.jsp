<%-- 
    Document   : order
    Created on : Sep 30, 2019, 12:36:49 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
                     h1 {
                display: block;
                font-size: 04em;
                margin-block-start: 0.00em;
                margin-block-end: 0.00em;
                margin-inline-start: 0px;
                margin-inline-end: 0px;
                padding-top: 0px;
                font-weight: bold;
                }
            .topnav {
                    overflow: hidden;
                    background-color: #333;
                    }
            .topnav a {
                      float: left;
                      color: #f2f2f2;
                      text-align: center;
                      padding: 14px 16px;
                      text-decoration: none;
                      font-size: 17px;
                      }
            .topnav a:hover {
                            background-color: #ddd;
                            color: black;
                            }
            .topnav a.active {
                             background-color: #4CAF50;
                             color: white;
                             }
h2{
text-align:center;
font-size: 1.9em;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Order</title>
</head>
<body>
    <%@ page import="java.sql.*"%>
    <%
        String cust_id=request.getParameter("cust_id");
         try{
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
              Statement stmt=con.createStatement();
              Statement stmt1=con.createStatement();
              Statement stmt2=con.createStatement();
              ResultSet rs=stmt.executeQuery("select item_name,item_amt,quantity,total_amt from orders where cust_id='"+cust_id+"'");
              ResultSet rs1=stmt1.executeQuery("select sum(total_amt) from orders where cust_id='"+cust_id+"'");
              ResultSet rs2=stmt2.executeQuery("select username from customer where cust_id='"+cust_id+"'");
              rs2.next();
                %>
    <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey"><!--banner div-->
                <h1>Online Food Delivery System</h1>
            </div>
            <div class="topnav"><!--MenuBar Div-->
                <a class="active" href="welcome.jsp?&username=<%=rs2.getString("username")%>">Home</a>
                 <a href="menu.jsp?&cust_id=<%=request.getParameter("cust_id")%>">MENU</a>
                 <a href="invoice.jsp?&cust_id=<%=request.getParameter("cust_id")%>">INVOICE</a>
                 <a href="index.jsp" style="float:right">Sign Out</a>
                 
            </div>
    <h2>INVOICE</h2>
    <table>
    <tr>
        <th>ITEM NAME</th>
        <th>ITEM AMOUNT</th>
        <th>QUANTITY</th>
        <th>AMOUNT</th>
    </tr>
    <% while(rs.next())
              {
        %>
                <tr>
                    <td><%= rs.getString("item_name")%></td>
                    <td><%= rs.getInt("item_amt")%></td>
                    <td><%= rs.getInt("quantity")%></td>
                    <td><%= rs.getInt("total_amt")%></td>
                </tr>
                <%
              }
              rs.close();
              stmt.close();
              if(rs1.next()){
            %>
            <tr>
                <td></td>
                <td></td>
                <th style="text-align:right; font-size: 1.3em">TOTAL AMOUNT</th>
                <td style="font-size: 1.3em"><b><%= rs1.getInt("sum(total_amt)")%></b></td>
           </tr>
           <%
                     }
              rs1.close();
              stmt1.close();
              con.close();
       }catch(Exception e){System.out.println(e);}
    %>
       </table>
    </body>
</html>
