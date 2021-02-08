<%-- 
    Document   : menu
    Created on : Sep 24, 2019, 8:49:27 PM
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
             .Marquee{
                 background-color:  #ffdbdb;
                     }
                     table{
                         font-family: Times_new_roman;
                         border-collapse: collapse;
                         width:100%
                     }
                     td,th{
                         border:1px solid #dddddd;
                         text-align:center;
                         padding: 8 px;
                     }
                     tr:nth-child(even){
                         background-color: #dddddd; 
                     }
          </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MENU</title>
    </head>
    <body>
        <div style="height:100%"><!--main div-->
            <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey"><!--banner div-->
                <h1>Online Food Delivery System</h1>
            </div>
            <div class="topnav"><!--MenuBar Div-->
                 <%@ page import="java.sql.*" %>
                 <%
                    String cust_id=request.getParameter("cust_id");
                            try{
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
                                Statement stmt=con.createStatement();
                                Statement stmt1=con.createStatement();
                                ResultSet rs=stmt.executeQuery("select * from menu");
                                ResultSet rs1=stmt1.executeQuery("select username from customer where cust_id='"+cust_id+"'");
                                rs1.next();
                                System.out.println(rs1.getString("username"));
                 %>
                 <a class="active" href="welcome.jsp?&username=<%=rs1.getString("username")%>">Home</a>
                 <a href="menu.jsp?&cust_id=<%=request.getParameter("cust_id")%>">MENU</a>
                 <a href="invoice.jsp?&cust_id=<%=request.getParameter("cust_id")%>">INVOICE</a>
                 <a href="index.jsp" style="float:right">Sign Out</a>
                 
            </div>
            <div>
                <form method="post">
                    <table border="2">
                        <tr>
                            <th>Item ID</th>
                            <th>Item Name</th>
                            <th>Item Amount</th>
                            <th>Order Item</th>
                        </tr>
                        <%
                                while(rs.next())
                                {                        
                        %>
                        <tr>
                            <td><%= rs.getInt("item_id")%></td>
                            <td><%= rs.getString("item_name")%></td>
                            <td><%= rs.getInt("item_amt")%></td>
                            <td><a href="order.jsp?&item_id=<%= rs.getInt("item_id")%>&username=<%= rs1.getString("username")%>">Order</a></td>
                        </tr>
                        <%
                        }
                        %>
                    </table>
                    <%
                        rs.close();
                        stmt.close();
                        con.close();
                    }catch(Exception e){System.out.println(e);}
                    %>
                </form>
            </div>
        </div>
    </body>
</html>
