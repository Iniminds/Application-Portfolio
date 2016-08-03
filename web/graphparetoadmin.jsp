<%

    if(session.isNew())
        {
           response.sendRedirect("index.jsp");
        }
%>
<html>
  <head>
    <title>Application Graph</title>
    <script type="text/javascript" src="FusionCharts.js"></script>
    <style type="text/css">
            .p9
{
    position: absolute;
    top:50px;
    right: 50px;
}
        </style>
  </head>
  <body>
      <font size="3"><p class="p9"><a href="homepageadmin.jsp">Goto Homepage</a><br><br><a href="logout.jsp">Logout</a></p></font>
    <div id="chartContainer">FusionCharts XT will load here!</div>

    <script type="text/javascript"><!--

      var myChart = new FusionCharts( "Pareto3D.swf",
                    "myChartId", "1000", "600", "0", "1" );

      myChart.setXMLUrl("data2.xml");

      myChart.render("chartContainer");
    // -->

    </script>
  </body>
</html>