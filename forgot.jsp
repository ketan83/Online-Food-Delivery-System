<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Food Order</title>
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
                else if(cpassword==""){
                    alert("Please Fill Confirm Password");
                    document.myform.cpassword.focus();
                    return false;
                }
                else
                    return true;
            }

        </script>
    </head>
    <body>
        <div style="height:100%">
            <div style="text-align: center;font-family: Times_New_Roman;height:30%;color:black;background-color: lightgrey">
                <h1>Online Food Delivery System</h1>
            </div>
            <div class="topnav">
                 <a class="active" href="index.jsp">Home</a>
                 <a href="admin_login.jsp">Admin</a>
                 <a href="delivery_login.jsp">Delivery</a>
            </div>
            <div style="text-align:center">
                <h2 style="text-align: center;font-size:2.5em">Reset Your Password</h2>
                <form name="myform" action="forget1.jsp" method="post">
                    <div style="font-size:1.4em">
                        &emsp;&ensp;&emsp;&emsp;<lable>Username: </lable>
                        <input type="text" name="username" placeholder="Username" required/><br><br>
                        &emsp;&ensp;<lable>New Password: </lable>
                        <input type="password" name="password" placeholder="New Password" required/><br><br>
                        <lable>Confirm Password: </lable>
                        <input type="password" name="cpassword" placeholder="Confirm New Password" required/><br><br>
                        <div style="text-align: center;">
                            <input type="submit" name="action" onclick=" return validate();"value="Change">
                            <input type="reset" value="reset">
                        </div>
                    </div>
                </form>
            </div>
    </body>
</html>
