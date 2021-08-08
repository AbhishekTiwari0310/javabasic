<%-- 
    Document   : home
    Created on : Mar 19, 2019, 5:20:41 PM
    Author     : 91799
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head style="margin: 0;
    padding: 0;
    font-size: large;
    box-sizing: border-box;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="maincss.css" rel="stylesheet" type="text/css">
        
    </head>
        <%
        session= request.getSession();
        String username=(String)session.getAttribute("username");
        
        if(!(username==null))
      {
        %>
        <body style="background-color: rgb(126, 156, 208);
    color: white;
    font-family: calibri;">    
            <div class="nav" style="width: 100%;
    height: 49px;
    background-color: darkblue;
    position: fixed;">
                <a href="register.jsp" style="float: left;
    text-decoration: none;
    color: #fff;
    padding: 14px 26px;
    font-size: 17px;
    transition: 0.6s all;
    position: fixed;">Register</a>
                <a href="delete.jsp" style="float: left;
    text-decoration: none;
    color: #fff;
    padding: 14px 26px;
    font-size: 17px;
    transition: 0.6s all;
    margin-left: 108px;
    position: fixed;">Delete</a>
                <a href="update.jsp" style="float: left;
    text-decoration: none;
    color: #fff;
    padding: 14px 26px;
    font-size: 17px;
    transition: 0.6s all;
    position: fixed;
    margin-left: 205px;">Update</a>
                <a href="profile.jsp" style="float: left;
    text-decoration: none;
    color: #fff;
    padding: 14px 26px;
    font-size: 17px;
    transition: 0.6s all;
    position: fixed;
    margin-left: 309px;">Profile</a>
                <a href="adminlogout.jsp" style="float: left;
    text-decoration: none;
    color: #fff;
    padding: 14px 26px;
    font-size: 17px;
    transition: 0.6s all;
    position: fixed;
    margin-left: 406px;">Logout</a>
            </div>
    <% }
        else
        {%>
        <script>
            alert('Invalid username/password');document.location.href='adminlogin.jsp'
        </script>
        <% }   
    %>
    </body>
    </html>

