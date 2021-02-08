<%-- 
    Document   : delete_delivery
    Created on : Sep 28, 2019, 8:01:56 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Delivery Boy</title>
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
        <h2 style="text-align: center;font-size:02em">DELETE DELIVERY BOY</h2>
        <form name="myform" action="delete_delivery1.jsp" method="post">
            <div style="text-align:center;font-size: 1.4em;">
                &emsp;&emsp;&emsp;&emsp;&ensp;&ensp;<lable>Name:</lable>
                <input type="text" name="name" placeholder="Name" required/><br><br>&emsp;&ensp;&ensp;&emsp;
                <lable>Username:</lable>
                <input type="text" name="username" placeholder="Username" required/><br><br>&emsp;&ensp;&ensp;&emsp;&ensp;&ensp;
                <div style="text-align: center;">
                    <input type="submit" name="action"  value="delete" align="center">
                    <input type="reset" name="action1" align="center" value="Reset">
                </div>
            </div>
        </form>
    </body>
</html>