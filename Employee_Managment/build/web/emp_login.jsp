<%-- 
    Document   : emp_login
    Created on : Jun 22, 2019, 9:47:48 PM
    Author     : 91799
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="util.SqlUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head style="margin: 0;
    padding: 0;
    font-size: large;
    box-sizing: border-box;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="maincss.css" rel="stylesheet" type="text/css">
    <script>
        function cancel()
           {
               document.location.href="choice.jsp";
           }
        </script>
    </head>
    <body style="background-color: rgb(126, 156, 208);
    color: white;
    font-family: calibri;">
         
        <div style="width: 290px;
    height: 400px;
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
    margin-bottom: 20px;">LOGIN FORM</h3>
            <form method="POST">
            <label for="username" style="font-size: 120%;
    font-weight: 600;
    margin: 20px;">USERNAME:</label>
            <input type="number"  name="id" required style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br/>
        <label for="password" style="font-size: 120%;
    font-weight: 600;
    margin: 20px;">PASSWORD:</label>
        <input type="password" name="pass" required style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <label style="font-size: 130%;
    font-weight: 600;
    margin: 40px;">~.~~.~~.~~.~~.~~.~~.~~.~</label>
        <button  type="submit" name="btn" value="Login" style="height: 40px;
    width: 250px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 20px 22px;">Login</button>
        <button  type="button" value="Cancel" onclick="cancel()" style="height: 40px;
    width: 250px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 1px 22px;">Cancel</button>
        </form>
        </div>
        <%!String id,password;%>
        
            <% 
                if(request.getParameter("btn")!=null){
                id=request.getParameter("id");
                password=request.getParameter("pass");
                
                String query="select * from employee where id='"+id+"' and password='"+password+"'";

              try{         
             SqlUtil.connectDB();

             ResultSet rs=SqlUtil.read(query);
             
             if(rs.next())
             {
                 session=request.getSession();
                 session.setAttribute("id",id);
                 session.setMaxInactiveInterval(1000);
                 response.sendRedirect("emp_home.jsp");
             }
             else
             {
                 %>
                 
                 <script>alert('Invalid username/password');
                 </script>
                 
            <% }
            }catch(Exception ex)
            {  
              System.out.println("Problem in login : "+ex);

                }
                       }

            %>
    </body>
</html>

