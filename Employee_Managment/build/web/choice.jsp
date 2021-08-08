<%-- 
    Document   : choice
    Created on : Mar 19, 2019, 4:10:53 PM
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
        <title>Choice</title>
        <link href="maincss.css" rel="stylesheet" type="text/css">
        <style>
            .btn{
    height: 40px;
    width: 250px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: darkblue;
    background-color: white;
    border-radius: 10px;
    margin: 15px 40px;
}
            .btn:hover{

                background-color: dodgerblue;
}
        </style>
    </head>
    <body style="background-color: rgb(126, 156, 208);
    color: white;
    font-family: calibri;">
        
        <div style="width: 330px;
             position: fixed;
    height: 250px;
    padding: 25px 25px;
    background-color: darkblue;
    margin-left: 50%;
    margin-top: 10%;
    margin-bottom: 2%;
    transform: translate(-50%, 0%);
    border-radius: 10px;
    box-shadow: 5px 5px 30px black;">
            <h3 style="font-size: 200%;
    text-align: center;
    margin-bottom: 20px;">WELLCOME</h3>
        <form>
            
            <input type="submit" class="btn" value="ADMINISTRATOR" name="admin">
            
            <input type="submit" class="btn" value="EMPLOYEE" name="employee">
           
            </form>
        </div>
        
        <%
            if(request.getParameter("admin")!=null)
            {
                response.sendRedirect("adminlogin.jsp");
            }
            else if(request.getParameter("employee")!=null)
            {
                response.sendRedirect("emp_login.jsp");
            }
        %>
    </body>
</html>
