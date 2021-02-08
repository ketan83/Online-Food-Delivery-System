<%-- 
    Document   : add_delivery
    Created on : Sep 28, 2019, 7:27:12 PM
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
                    font-family: inherit; /* Important for vertical align on mobile phones */
                    margin: 0; /* Important for vertical align on mobile phones */
               }

/* Add a red background color to navbar links on hover */
            .navbar a:hover, .dropdown:hover .dropbtn {
                    background-color: #4CAF50;
                }

/* Dropdown content (hidden by default) */
            .dropdown-content {
                    display: none;
                    position: absolute;
                    background-color: #f9f9f9;
                    min-width: 160px;
                    z-index: 1;
                }

/* Links inside the dropdown */
            .dropdown-content a {
                    float: none;
                    color: black;
                    padding: 12px 16px;
                    text-decoration: none;
                    display: block;
                    text-align: left;
                }

/* Add a grey background color to dropdown links on hover */
            .dropdown-content a:hover {
                    background-color: #ddd;
                }

/* Show the dropdown menu on hover */
            .dropdown:hover .dropdown-content {
                    display: block;
                }
        </style>
        <script>
            function validate(){
                var username=document.myform.username.value;
                if(username==""){
                    alert("Please enter user name");
                    document.myform.username.focus();
                    return false;
                }
                else if((username.length<5)||(username.length>15)){
                    alert("username is invalid");
                    document.myform.username.focus();
                    return false;
                }
                var password=document.myform.password.value;
                var illegalChar=/[\_]/;
                if(password==""){
                    alert("Please enter Password");
                    document.myform.password.focus();
                    return false;
                }
                else if((password.length<7)||(password.length>15)){
                    alert("Password should be between 7 and 15 characters");
                    document.myform.password.focus();
                    return false;
                }
                else if(illegalChar.test(password)){
                    alert("Password contains illegal character");
                    document.myform.password.focus();
                    return false;
                }
                else if((phone.length<10)||(phone.length>10)){
                    alert("Phone No. must be of 10 characters");
                    document.myform.phone.focus();
                    return false;
                }
                else
                    return true;
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Delivery Boy</title>
    </head>
    <body>
        <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey">
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
                    <a href="update_delivery.">Modify Delivery Boy</a>
                </div>
            </div>
            <a href="index.jsp" style="float:right">Sign Out</a>
        </div>
        <h2 style="text-align: center;font-size:02em">&emsp;&emsp;&emsp;ADD DELIVERY BOY</h2>
        <form name="myform" action="add_delivery1.jsp" method="post">
            <div style="text-align:center;font-size: 1.4em;">
                &emsp;&emsp;&emsp;&emsp;&ensp;<lable>Name<font style="color:red">*</font>:</lable>
                <input type="text" name="name" placeholder="Full Name" required/><br><br>&emsp;&ensp;&ensp;&emsp;&ensp;&ensp;
                <lable>Address<font style="color:red">*</font>:</lable>
                <input type="text" name="address" placeholder="Address with pincode" required/><br><br>&emsp;&ensp;&ensp;&emsp;&ensp;
                <lable>Phone No<font style="color:red">*</font>:</lable>
                <input type="tel" name="phone" placeholder="XXXXXXXXXX" pattern="\d{10}$"required/><br><br>&emsp;&ensp;&emsp;&emsp;
                <lable>Username<font style="color:red">*</font>:</lable>
                <input type="text" name="username" placeholder="username" required/><br><br>&emsp;&ensp;&ensp;&ensp;&emsp;
                <lable>Password<font style="color:red">*</font>:</lable>
                <input type="password" name="password" placeholder="password" required/><br><br>
                <lable>Confirm Password<font style="color:red">*</font>:</lable>
                <input type="password" name="cpassword" placeholder="Confirm Password" required/><br><br>
                <div style="text-align: center;">
                    <input type="submit" name="action" onclick="return validate();"value="submit" align="center">
                    <input type="reset" name="action1" align="center" value="Reset">
                </div>
            </div>
        </form>
    </body>
</html>
