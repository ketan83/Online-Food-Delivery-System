<%-- 
    Document   : delivery_login
    Created on : Sep 30, 2019, 11:34:49 AM
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
            .LoginDiv{  
                          margin-top: 30px;
                          margin-bottom: 0px;
                          margin-left: 0px;
                          margin-right: 0px;
                          width:100%;
                          height:100px
                      }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Food Order</title>
    </head>
    <body>
        <div style="height:100%"><!--main div-->
            <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey"><!--banner div-->
                <h1>Online Food Delivery System</h1>
            </div>
            <div class="topnav"><!--MenuBar Div-->
                 <a class="active" href="index.jsp">Home</a>
                 <a href="admin_home.jsp">Admin</a>
                 <a href="delivery_login">Delivery</a>
            </div>
        </div>
                <script>
            function validate(){
                var username=documnt.myform.username.value;
                if(username==""){
                    alert("Please enter user name");
                    document.myform.username.focus();
                    return false;
                }
                if((username.length<5)||(username.length>15)){
                    alert("username is invalid");
                    document.myform.username.focus();
                    return false;
                }
                var password=documnt.myform.password.value;
                var illegalChar=/[\_]/;
                if(password==""){
                    alert("Please enter user name");
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
            }
        </script>
        <div style="text-align:center">
            <div class="LoginDiv">
                <h2 style="font-size:2.5em"><u>DELIVERY LOGIN</u></h2>
                <form name="myform" action="verify_delivery.jsp" method="post">
                        <div style="text-align:center">
                            <lable>Username: </lable>
                            <input type="text" name="username" placeholder="Username" required/><br><br>
                            <lable>Password: </lable>
                            <input type="password" name="password" placeholder="Password" required/><br><br>
                            <div style="text-align: center;">
                                <input type="submit" name="action" onclick="validate();"value="Login" align="center">
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </body>
</html>
