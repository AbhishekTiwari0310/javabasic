<%-- 
    Document   : emp_home
    Created on : Jun 22, 2019, 9:38:56 PM
    Author     : 91799
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head style="margin: 0;
    padding: 0;
    font-size: large;
    box-sizing: border-box;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Home</title>
        <link href="maincss.css" rel="stylesheet" type="text/css">
        <script>
        function emp_profile()
           {
               document.location.href="emp_profile.jsp";
           }
           function emp_logout()
           {        
               document.location.href="emp_logout.jsp";
           }
        </script>
    </head>
     <%
        session= request.getSession();
        String id=(String)session.getAttribute("id");
        System.out.println("id : "+ id);
        if(!(id==null))
      {
        %>
    <body style="background-color: rgb(126, 156, 208);
    color: white;
    font-family: calibri;">
        <div style="width: 330px;
    height: 280px;
    padding: 25px 25px;
    background-color: darkblue;
    margin-left: 50%;
    margin-top: 10%;
    margin-bottom: 2%;
    transform: translate(-50%, 0%);
    border-radius: 10px;
    box-shadow: 5px 5px 30px black;">
        <form>
            <h3 style="font-size: 200%;
    text-align: center;
    margin-bottom: 20px;">HELLO</h3>
            <input type="button" class="btn" value="Profile" onclick="emp_profile()" style="height: 40px;
    width: 280px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 15px 22px;">            
            <input type="button" class="btn" value="Logout" onclick="emp_logout()" style="height: 40px;
    width: 280px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 15px 22px;">
        </form>
        </div>
    <% }
        else
        {%>
        <script>
            alert('Invalid username/user');document.location.href='emp_login.jsp'
        </script>
        <% }   
    %>
    </body>
</html>
