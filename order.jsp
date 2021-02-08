<%-- 
    Document   : order
    Created on : Sep 30, 2019, 1:50:20 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            h2{
                font-size: 02em
            }
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
          </style>
                   <script>
                function validate(){
                var quantity=document.myform.quantity.value;
                if(quantity==""){
                    alert("Enter Quantity");
                    document.myform.quantity.focus();
                    return false;
                }
                else if(quantity==0){
                    alert("Quantity must be atleast 1");
                    document.myform.quantity.focus();
                    return false;
                }
                else
                    return true;
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
    </head>
    <body>
        <%
                String username=request.getParameter("username");
                System.out.println(username);
                String item_id=request.getParameter("item_id");
                int id=Integer.parseInt(item_id);                
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
                Statement stmt=con.createStatement();
                Statement stmt1=con.createStatement();
                ResultSet rs=stmt.executeQuery("select item_name,item_amt from menu where item_id='"+id+"'");
                ResultSet rs1=stmt1.executeQuery("select cust_id from customer where username='"+username+"'");
                if(rs.next()){
                    if(rs1.next()){
                        System.out.println(rs1.getString("cust_id"));
            %>
        <div style="height:100%"><!--main div-->
            <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey"><!--banner div-->
                <h1>Online Food Delivery System</h1>
            </div>
            <div class="topnav"><!--MenuBar Div-->
                    <a class="active" href="welcome.jsp?&username=<%=request.getParameter("username")%>">Home</a>
                    <a href="menu.jsp?&cust_id=<%=rs1.getString("cust_id")%>">MENU</a>
                    <a href="invoice.jsp?&cust_id=<%=rs1.getString("cust_id")%>">INVOICE</a>
                    <a href="index.jsp" style="float:right">Sign Out</a>
            </div>
            <%@page import="java.sql.*" %>
            
        <h2 style="text-align: center;"><u>ORDER PAGE</u></h2>
        <form name="myform" style="text-align: center; font-size: 1.3em" action="order1.jsp?cust_id=<%=rs1.getString("cust_id")%>" method="post">
            &emsp;&emsp;<label>ITEM NAME</label>
            <input type="text" name="item_name"value="<%=rs.getString("item_name")%>"readonly/><br><br>
            &ensp;<label>ITEM AMOUNT</label>
            <input type="text" name="item_amt" value="<%=rs.getString("item_amt")%>"readonly/><br><br>
            &emsp;&emsp;&ensp;<label>QUANTITY</label>
            <input type="text" name="quantity" placeholder="Quantity of Item" required/><br><br>
            <input type="submit" name="action" onclick="return validate();" value="Order">
            <input type="reset" name="Reset"/>
        </form>
            <%
                }
              }
                con.close();
        }catch(Exception e){out.println(e);}
             %>
    </body>
</html>