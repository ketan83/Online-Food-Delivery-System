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
            * {box-sizing: border-box;}
            .mySlides {display: none;}
            img {
                vertical-align: middle;
                max-height: 310px; 
                }
            .slideshow-container {
                                 max-height: 1000px;  
                                 position: relative;
                                 margin: auto;
                                 }
            .text {
                  color: #f2f2f2;
                  font-size: 15px;
                  padding: 8px 12px;
                  position: absolute;
                  bottom: 8px;
                  width: 100%;
                  text-align: center;
                  }
            .numbertext {
                        color: #f2f2f2;
                        font-size: 12px;
                        padding: 8px 12px;
                        position: absolute;
                        top: 0;
                        }
            .dot {
                 height: 15px;
                 width: 15px;
                 margin: 0 2px;
                 background-color: #bbb;
                 border-radius: 50%;
                 display: inline-block;
                 transition: background-color 0.6s ease;
                 }
            .active {
                    background-color: #717171;
                    }
            .fade {
                  -webkit-animation-name: fade;
                  -webkit-animation-duration: 1.5s;
                  animation-name: fade;
                  animation-duration: 0.0s;
                  }
            @-webkit-keyframes fade {
                                    from {opacity: .4}
                                    to {opacity: 1}
                                    }

            @keyframes fade {
                            from {opacity: .4}
                            to {opacity: 1}
                            }
            .LoginDiv{  
                          margin-top: 30px;
                          margin-bottom: 0px;
                          margin-left: 0px;
                          margin-right: 0px;
                          width:50%;
                          height:100px
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
                var password=document.myform.password.value;
                var illegalChar=/[\_]/;
                if(password==""){
                    alert("Please enter Password");
                    document.myform.password.focus();
                    return false;
                }
                else if(illegalChar.test(password)){
                    alert("Password contains illegal character");
                    document.myform.password.focus();
                    return false;
                }
                else
                    return true;
            }
        </script>
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
                 <a href="delivery_login.jsp">Delivery</a>
            </div>
            <!-- Slideshow container -->
            <div class="slideshow-container">
                <div class="mySlides fade">
                    <img src="images/hot_drinks.jpg" style="width:100%"/>
                </div>

                <div class="mySlides fade">
                    <img src="images/starters.jpg" style="width:100%"/>
                </div>

                <div class="mySlides fade">
                    <img src="images/nonveg.jpg" style="width:100%"/>
                </div>
                <div style="text-align:center">
                    <span class="dot"></span> 
                    <span class="dot"></span> 
                    <span class="dot"></span> 
                </div>
            </div>            
        </div>
        <script>
            var slideIndex = 0;
            showSlides();
            
            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";  
                }
                slideIndex++;
                if (slideIndex > slides.length) {slideIndex = 1}    
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex-1].style.display = "block";  
                dots[slideIndex-1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>
        <div style="text-align:center">
            <div style="float:left;width:50%;">
                <h2>******THESE ARE OFFER FOR YOU******</h2>
                <marquee direction="up" style="height:200px">
                    <center style="font-family: Times_New_Roman;font-size: 1.8em;
                         font-weight: normal;"><u>Winter Season Offer</u>
                    </center><br>
                    <center style="font-family: Times_New_Roman;font-size: 1.4em;">
                        10% OFF On Above The Purchase Of Rs.1200
                    </center>
                </marquee>
            </div>
            <div style="float:left;" class="LoginDiv">
                <form name="myform" action="verify.jsp" method="post">
                        <div style="text-align:center">
                            <lable>Username: </lable>
                            <input type="text" name="username" placeholder="Username" required/><br><br>
                            <lable>Password: </lable>
                            <input type="password" name="password" placeholder="Password" required/><br><br>
                            <div style="text-align: center;">
                                <input type="submit" name="action" onclick="return validate();"value="login" align="center">
                            </div>
                            <br>&emsp;&ensp;&ensp;
                            <a href="forgot.jsp">Forgot Password</a>&emsp;&ensp;
                            <a href="register.jsp"> New User?Click Here</a>
                        </div>
                </form>
            </div>
        </div>
    </body>
</html>
