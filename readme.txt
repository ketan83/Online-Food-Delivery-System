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
      /    ['September',1550]
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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
          ['September',135]
        ]);

        var options = {
          title: 'Monthly Customers'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script><!--End of pie chart-->