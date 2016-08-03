<%-- 
    Document   : acctry
    Created on : Nov 9, 2012, 11:05:30 AM
    Author     : admin
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
        <script>
 function formValidation()
{
var a=document.form1.n2.value;
if(a == "")
    {
        alert("Please enter your employee id.");
    }
if(isNaN(a) && a!=null)
{
 alert("It should contain only no.s!!!");
 document.form1.n2.value="";
}
}
var b=document.form1.n1.value;
function chk_nm(b)
{

var bpt=b.charCodeAt(0);
if(b == "")
    {
        alert("Please enter your name.");
        
    }
else if(!(bpt>=65 && bpt<=91) && bpt!=null)
{
alert("First letter should be an Uppercase alphabet letter.");
document.form1.n1.value="";
}
}
var c=document.form1.n3.value;
function chk_email(c)
{
var cpt="^[\\w-_\.]*[\\w-_\.]\@[\\w]\.+[\\w]+[\\w]$";
var cre=new RegExp(cpt);
if(c == "")
    {
        alert("Please enter your email id.");
    }
else if(!cre.test(c))
{
alert("Invalid email input!!");
document.form1.n3.value="";

}

}
var e=document.form1.n5.value;
function chk_pw(e)
{
if(e == "")
    {
        alert("Please Enter your password.");
    }
 else if(e.length<=5)
{
alert("Password should be more than 5 characters.");
document.form1.n5.value="";

}
}
var d=document.form1.n4.value;
function chk_nm1(d)
{
var bpt=d.charCodeAt(0);
if(d == "")
    {
        alert("Please enter Department. ");
    }
else if(!(bpt>=65 && bpt<=91) && bpt!=null)
{
alert("First letter should be an Uppercase alphabet letter.");
document.form1.n4.value="";

}
}

function chk_nm2()
{

if(document.form1.n6.value == "")
{
alert("Please enter answer.");
document.form1.n6.value="";

}
}

function questionselect()
{
   if(document.form1.question.selectedIndex==0)
{
alert("Please select item from first list.");

}
}
</script>
    </head>
    
         <body background="homepage_bg.jpg">

        <fieldset><legend><b>Personal info.</b></legend>
        <form  name="form1" action="createaccount" method="post">
            Employee Name:&nbsp;&nbsp;&nbsp;<input name="n1" type="text" size=30  onblur="chk_nm(this.value);"><br><br>
            Employee Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="n2" type="text" size=15 onblur="formValidation(this.value);"><br><br>
            Email-Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="n3" type="text" size=30 onblur="chk_email(this.value);"><br><br>
            Department:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="n4" type="text" size=30 onblur="chk_nm1(this.value);"><br><br>
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input name="n5" type="password" size=30 onblur="chk_pw(this.value);"><br><br>
            Security Question:&nbsp;<select name="question" onblur="questionselect();">
                                            <option value="Default" SELECTED >- Select One -</option>
                                            <option value="What town were you born in?" >What town were you born in?</option>
                                            <option value="What town was your father born in?" >What town was your father born in?</option>
                                            <option value="What is the name of the hospital in which you were born?" >What is the name of the hospital in which you were born?</option>
                                            <option value="What is the first name of your best childhood friend?" >What is the first name of your best childhood friend?</option>
                                            <option value="What was the name of your primary school?" >What was the name of your primary school?</option>
                                            <option value="What town was your mother born in?" >What town was your mother born in?</option>
                                            <option value="What is the name of the first company / organization you worked for?" >What is the name of the first company / organization you worked for?</option>

            </select><br><br>
            Your Answer:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="n6" type="text" size=30 onblur="chk_nm2();"><br><br>
            <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="submit" value="submit">
        </form>
            </fieldset>
    </body>
</html>

 
