<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Application Portfolio</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256" />
<style type="text/css">
<!--
/* set the menu style */
.menuHead { font-weight: bold; font-size: larger;}
.menuChoices { background-color: #DCDCDC; width: 200px;}
.menu a {color: #000000; text-decoration: none;}
.menu a:hover {text-decoration: underline;}
/* position your menus */
#menu1 {position: absolute; top: 220px; left: 300px; width: 200px;}
#menu2 {position: absolute; top: 220px; left: 500px; width: 200px;}
#menu3 {position: absolute; top: 220px; left: 700px; width: 200px;}


-->
</style>
<script type="text/javascript">
<!--
/* we'll only allow DOM browsers to simplify things*/
(document.getElementById ? DOMCapable = true : DOMCapable = false);
function hide(menuName)
{
if (DOMCapable)
{
var theMenu = document.getElementById(menuName+"choices");
theMenu.style.visibility = 'hidden';
}
}
function show(menuName)
{
if (DOMCapable)
{
var theMenu = document.getElementById(menuName+"choices");
theMenu.style.visibility = 'visible';
}
}
//-->
</script>
</head>
    <body dir="rtl" background="homepage_bg.jpg">
        <p align="center"><img align="center" src="lets begin.jpg" width="600" height="200" ></img></p>
<div id="menu1" dir="rtl" class="menu" onmouseover="show('menu1');" onmouseout="hide('menu1');">
<div class="menuHead">Features</div>
<div id="menu1choices" class="menuChoices"><i><font size="3">
            <img src="ESSAR-IT-PARK.jpg" height="200" width="200"></img><p align="center">

<a href="app_mgtadmin.jsp">APPLICATION MANAGEMENT</a><br>
<a href="Reportadmin.jsp">REPORT</a><br>
<a href="appdetailsadmin.jsp">ADD APPLICATION DETAIL</a></p></font></i>

</div>
</div>
<div id="menu2" dir="rtl" class="menu" onmouseover="show('menu2');" onmouseout="hide('menu2');">
<div class="menuHead">About Us</div>

<div id="menu2choices" class="menuChoices">
    <img src="about us.jpg" height="200" width="200"></img><p align="center">
<a href="http://www.essar.com">Visit ESSAR's Web-Site</a><br /></p>
</div>
</div>
<div id="menu3" dir="rtl" class="menu" onmouseover="show('menu3');" onmouseout="hide('menu3');">
<div class="menuHead">Request</div>
<div id="menu3choices" class="menuChoices">
    <img src="ServiceRequest.jpg" width="200" height="200"></img><p align="center">
<a href="request.jsp">Request from Employee</a><br />
    </p>
</div>
</div>
<script type="text/javascript">
<!--
/* Don't hide menus for JS off and older browsers */
if (DOMCapable)
{
hide("menu1");
hide("menu2");
hide("menu3");
}
//-->
</script>
</body>
</html>