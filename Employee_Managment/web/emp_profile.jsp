<%-- 
    Document   : emp_profile
    Created on : Jun 22, 2019, 9:34:35 PM
    Author     : 91799
--%>

<%@page import="util.SqlUtil"%>
<%@page import="java.sql.ResultSet"%>
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
        function Done()
           {
               document.location.href="emp_home.jsp";
           }
        </script>
    </head>
        <%!String query,username,city,gender,email,DOB,phone,password;%>
        <%!float salary;%>
        <%
                session= request.getSession();
                String id=(String)session.getAttribute("id");
        
                if(!(id==null))
                {
                
                query="select * from employee where id="+id+"";
                ResultSet rs=SqlUtil.read(query);
                try
                { 
                    while(rs.next())
                    {
                        username=rs.getString("username");
                        city=rs.getString("city");
                        email=rs.getString("email");
                        password=rs.getString("password");
                        DOB=rs.getString("DOB");
                        gender=rs.getString("gender");
                        phone=rs.getString("phone");
                        salary=rs.getFloat("salary");
                        
                    }%>
                    
                    <body style="background-color: rgb(126, 156, 208);
    color: white;
    font-family: calibri;">
        <div style="width: 290px;
    max-height: 600px;
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
    margin-bottom: 20px;
    margin-top: 1px;
    color: white">PROFILE</h3>
        <form>
            <div style="padding: 7px;
    margin: 10px 22px;
    font-size: 120%;
    height: 20px;
    max-width: 500px;
    border-radius: 24px;
    border: solid;
    text-align: center;"><%=username%></div> 
         
            <div style="padding: 7px;
    margin: 10px 22px;
    font-size: 120%;
    height: 20px;
    max-width: 500px;
    border-radius: 24px;
    border: solid;
    text-align: center;"><%=city%></div>
        
            <div style="padding: 7px;
    margin: 10px 22px;
    font-size: 120%;
    height: 20px;
    max-width: 500px;
    border-radius: 24px;
    border: solid;
    text-align: center;"><%=gender%></div>
        
            <div style="padding: 7px;
    margin: 10px 22px;
    font-size: 120%;
    height: 20px;
    max-width: 500px;
    border-radius: 24px;
    border: solid;
    text-align: center;"><%=email%></div>
        
            <div style="padding: 7px;
    margin: 10px 22px;
    font-size: 120%;
    height: 20px;
    max-width: 500px;
    border-radius: 24px;
    border: solid;
    text-align: center;"><%=DOB%></div>
        
            <div style="padding: 7px;
    margin: 10px 22px;
    font-size: 120%;
    height: 20px;
    max-width: 500px;
    border-radius: 24px;
    border: solid;
    text-align: center;"><%=phone%></div>
        
            <div style="padding: 7px;
    margin: 10px 22px;
    font-size: 120%;
    height: 20px;
    max-width: 500px;
    border-radius: 24px;
    border: solid;
    text-align: center;"><%=salary%></div> 
            <button  type="button" class="btn" onclick="Done()" style="height: 40px;
    width: 100px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 5px 100px;">Done</button>
        </form>
        </div>
        
                <%
                }
                catch(Exception ex)
                {
                    System.out.println("problem"+ex);
                }
                }
        else
        {%>
        <script>
            alert('Invalid username/password');document.location.href='emp_login.jsp'
        </script>
        <% }   
    %>
</body>
</html>
