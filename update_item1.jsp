<%-- 
    Document   : update_item1
    Created on : Sep 27, 2019, 4:00:37 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("item_id");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/takeaway","root","Saurabh@9915");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from menu where item_id='"+id+"'");
        while(rs.next()){
            %>
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
            .active {
                    background-color: #717171;
                    }
                     .dropdown{
                         float: left;
                         overflow:hidden;
                     }
            .dropdown .dropbtn {
                                    font-size: 16px;
                                    border: none;
                                    outline: none;
                                    color: white; 
                                    padding: 14px 16px;
                                    background-color: inherit;
                                    font-family: inherit; 
                                    margin: 0;
                                }
            .navbar a:hover, .dropdown:hover .dropbtn {
                                                        background-color: #4CAF50;
                                                      }
            .dropdown-content {
                                display: none;
                                position: absolute;
                                background-color: #f9f9f9;
                                min-width: 160px;
                                z-index: 1;
                              }
            .dropdown-content a {
                                    float: none;
                                    color: black;
                                    padding: 12px 16px;
                                    text-decoration: none;
                                    display: block;
                                    text-align: left;
                                }
            .dropdown-content a:hover {
                                        background-color: #ddd;
                                      }
            .dropdown:hover .dropdown-content {
                                                display: block;
                                              }
        </style>
                </head>
                <body>
                    <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey"><!--banner div-->
            <h1>Online Food Delivery System</h1>
        </div>
        <div class="topnav"><!--MenuBar Div-->
            <a class="active" href="welcome_admin.jsp">Home</a>
            <div class="dropdown">
                <button class="dropbtn">Item
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                        <a href="add_item.jsp">Add New Item</a>
                        <a href="delete_item.jsp">Delete An Item</a>                         
                        <a href="update_item.jsp">Modify An Item</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Delivery
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="add_delivery.jsp">Add Delivery Boy</a>
                    <a href="delete_delivery.jsp">Delete Delivery Boy</a>
                    <a href="update_delivery.jsp">Modify Delivery Boy</a>
                </div>
            </div>
            <a href="index.jsp" style="float:right">Sign Out</a>
        </div>
                    <div style="text-align: center;font-size: 1.3em">
                        <u><h2>Update Item</h2></u>
                    <form name="update_item" method="get" action="modify_item.jsp">
                        &emsp;&ensp;<lable>Item_id</lable>
                        <input type="text" name="item_id" value="<%=rs.getInt("item_id") %>"/><br>
                        <br>
                        <lable>Item_name</lable>
                        <input type="text" name="item_name" required/><br>
                        <br>
                        <lable>Item_amt</lable>
                        <input type="text" name="item_amt" required/>
                        <br><br>
                        <input type="submit" value="update"/>
                    </form>
                    <%
            }
            con.close();
        }catch(Exception e){System.out.println(e);}
     %>
    </body>
</html>