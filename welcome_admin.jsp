<%-- 
    Document   : welcome_admin
    Created on : Sep 24, 2019, 10:33:20 PM
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
            .navbar{
                    overflow:hidden;
                    background-color: #333;
                    font-family: Times_New_Roman;
                   }
            .navbar a{
                       float:left;
                       font-size: 16px;
                       color: white;
                       text-align: center;
                       padding: 14px 16px;
                       text-decoration: none;
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

* {box-sizing: border-box}

.container {
  width: 100%;
  background-color: #ddd;
}

.skills {
  text-align: right;
  padding-top: 10px;
  padding-bottom: 10px;
  color: white;
}

.income {width: 70%; background-color: #4CAF50;}
.expenses {width: 52%; background-color: #2196F3;}
.spending {width: 30%; background-color: #f44336;}
.totals {width: 81%; background-color: #808080;}
       </style>
       
       <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
       <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month', 'Profit'],
          ['January',1200],
          ['February',1400],
          ['March',1300],
          ['April',1600],
          ['May',1800],
          ['June',1650],
          ['July',1500],
          ['August',1400],
          ['September',1550],
          ['October',1478],
        ]);

        var options = {
                
          title : 'Monthly Profit',
          vAxis: {title: 'Profit(in Rs.)'},
          hAxis: {title: 'Month'},
          seriesType: 'bars',
          series: {5: {type: 'line'}}        };


        var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
           ['Month', 'Customers'],
          ['January',130],
          ['February',120],
          ['March',140],
          ['April',150],
          ['May',170],
          ['June',155],
          ['July',145],
          ['August',140],
          ['September',135],
          ['October',148],
        ]);

        var options = {
          title: 'Monthly Customers'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script><!--End of pie chart-->

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Food Order</title>
        <link href="main.css" rel="stylesheet"></link>
    </head>
    <body>
        <div style="height:100%"><!--main div-->
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
            <br>
            <div style="width:100%;height:500px"><!-- div for chart-->
                <div style="width:50%;text-align: center;float: left">
                    <h2><u>Monthly Statistics</u></h2>
                    <div id="chart_div" style="width:100%; height: 400px;"></div>
                </div>
                <div style="width:47%;text-align: center;float:left">
                    <h2><u>Monthly Customers</u></h2>
                    <div id="piechart" style="width: 900px; height: 500px;"></div>
                </div>
            </div>
            <div style="width:100%;"><!--div for targets-->
                <div style="width:23%;float: left;margin-right: 1%;margin-left: 1%">
                    <p><b>Income Target</b></p>
                    <div class="container">
                      <div class="skills income">70%</div>
                    </div>
                </div>
                <div style="width:23%;float: left;margin-right: 1%;margin-left: 1%">
                    <p><b>Expenses Target</b></p>
                    <div class="container">
                      <div class="skills expenses">52%</div>
                    </div>
                </div>
                <div style="width:23%;float: left;margin-right: 1%;margin-left: 1%">
                    <p><b>Spending Target</b></p>
                    <div class="container">
                      <div class="skills spending">30%</div>
                    </div>
                </div>
                <div style="width:23%;float: left;margin-right: 1%;margin-left: 1%">
                    <p><b>Totals Target</b></p>
                    <div class="container">
                      <div class="skills totals">81%</div>
                    </div>
                </div>               
            </div>
        </div>
    </body>
</html>
