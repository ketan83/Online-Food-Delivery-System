<%-- 
    Document   : welcome_delivery
    Created on : Sep 30, 2019, 11:42:26 AM
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
        <title>Online Food Dilivery</title>        
    </head>
    <body>
        <div style="height:100%"><!--main div-->
            <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey"><!--banner div-->
                <h1>Online Food Delivery System</h1>
            </div>
            <div class="topnav"><!--MenuBar Div-->
                 <a class="active" href="welcome_delivery.jsp">Home</a>
                 <a href="index.jsp" style="float:right">Sign Out</a>
            </div>
            <div style="height:400px;width: 100%;">
                <%@page import="java.sql.*"%>
                 <div style="height:100%;width: 70%;float: left">
                     <center><h2>TODAY'S ORDERS</h2></center>
                    <table border="2">
                       
                        <tr>
                            <th>Order ID</th>
                            <th>Cust_id</th>
                            <th>Item_name</th>
                            <th>Quantity</th>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Phone No.</th>
                        </tr>
                         <%
                            try{
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
                                Statement stmt=con.createStatement();
                                Statement stmt1=con.createStatement();
                                ResultSet rs=stmt.executeQuery("select order_id,cust_id,item_name,quantity from orders where cust_id>0");
                                int c;
                                ResultSet rs1=null;
                                while(rs.next())
                                {
                                    c=rs.getInt("cust_id");
                                    rs1=stmt1.executeQuery("select name,address,phone_no from customer where cust_id='"+c+"'");
                                    if(rs1.next()){
                        %>
                        <tr>
                            <td><%= rs.getInt("order_id")%></td>
                            <td><%= rs.getInt("cust_id")%></td>
                            <td><%= rs.getString("item_name")%></td>
                            <td><%= rs.getInt("quantity")%></td>
                            <td><%= rs1.getString("name")%></td>
                            <td><%= rs1.getString("address")%></td>
                            <td><%= rs1.getString("phone_no")%></td>
                        </tr>
                        <%
                        }
                       }
                        rs.close();
                        stmt.close();
                        con.close();
                    }catch(Exception e){System.out.println(e);}
                        %>
                    </table>
                        
                </div>
                <div style="height:100%; width:30%;float:left">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d60536.499429936666!2d73.84661486158824!3d18.504881730770496!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1572448646205!5m2!1sen!2sin" alt="Location of order" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </div>
            </div>
            
        </div>
    </body>
</html>
