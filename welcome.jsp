<%-- 
    Document   : welcome
    Created on : Sep 21, 2019, 3:00:22 PM
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
          </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Food Delivery</title>
    </head>
    <body>
        
        <div style="height:100%"><!--main div-->
            <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey"><!--banner div-->
                <h1>Online Food Delivery System</h1>
            </div>
            <div class="topnav"><!--MenuBar Div-->
                <%@page import="java.sql.*" %>
                 <%
        String username=request.getParameter("username");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select cust_id from customer where username='"+username+"'");
            rs.next();
            
        %>
                <a class="active" href="welcome.jsp?&username= <%= request.getParameter("username")%>">Home</a>
                 <a href="menu.jsp?&cust_id= <%= rs.getInt("cust_id")%>">MENU</a>
                 <a href="invoice.jsp?&cust_id= <%=rs.getInt("cust_id")%>">INVOICE</a>                 
            <%
            con.close();
        }catch(Exception e){out.println(e);}
    %>
                 <a href="index.jsp" style="float:right">Sign Out</a>
                 </div>
            <div class="Marquee">
                <marquee><h2 style="font-size: 1.9em">WELCOME</h2></marquee>
            </div>
            <h2 style="font-size: 1.6em">WE SERVE,</h2><br>
            <div>                
                <div style="float:left;width: 24%;margin-right: 1.0%">
                    <div style="text-align:center"><img src="images/starters.jpg"/></div>
                    <div>
                        <h2 style="text-align: center">STARTER</h2>
                        <p style="text-align: justify">
                            The starters are the one bite appetizers. We serve the starters in veg or non-veg with different tastes such as spicy, sweet etc.
                            The starters in veg are like Gobi Tikka,Hariyali Kebab,etc. and in non-veg are like chiken tikka,Chikem Lolipop, etc.
                        </p>
                    </div>
                </div>
                <div style="float:left;width: 24%;margin-right: 1.0%">
                    <div style="height:183px"><img src="images/veg.jpg"/></div>
                    <div>
                        <h2 style="text-align: center">MAIN COURSE</h2>
                        <p style="text-align: justify">
                            The main dish is usually heaviest,heartiest and most complex or substantial dish in a meal.
                            The main ingredient is usually meat or fish; in vegiterian dish, the main ingredient is vegetables.
                        </p>
                    </div>
                </div>
                <div style="float:left;width: 24%;margin-right: 1.0%">
                    <div><img src="images/dessert.jpg"/></div>
                    <div>
                        <h2 style="text-align: center">DESSERTS</h2>
                        <p style="text-align: justify">
                            Desserts consists of various flavors,textures,appearances.Desserts can be defined as a usually sweeter course
                            to conclude a meal like Icecream,pudding,pie,etc.
                        </p>
                    </div>
                </div>
                <div style="float:left;width: 24%">
                    <div><img src="images/images.jpg"/></div>
                    <div>
                        <h2 style="text-align: center">Drinks</h2>
                        <p style="text-align: justify">
                            The soft Drinks which are the most delicious drinks you can sip,gulp and enjoy which are non-alcoholic.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
