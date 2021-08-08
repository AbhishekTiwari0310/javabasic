<%-- 
    Document   : login
    Created on : Mar 19, 2019, 3:52:17 PM
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
    margin: 15px 22px;
}
            .btn:hover{

                background-color: dodgerblue;
}
        </style>
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
            <input type="text"  name="uname" required style="padding: 5px;
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
        <button  type="submit" name="btn" class="btn" value="Login" >Login</button>
        <button  type="button" value="Cancel" class="btn" onclick="cancel()">Cancel</button>
        </form>
        </div>
        <%!String username,password;%>
        
            <% 
                if(request.getParameter("btn")!=null){
                username=request.getParameter("uname");
                password=request.getParameter("pass");
                System.out.println(username);
                String query="select * from login where uname='"+username+"' and password='"+password+"'";

              try{         
             SqlUtil.connectDB();

             ResultSet rs=SqlUtil.read(query);
             
             if(rs.next())
             {
                 session=request.getSession();
                 session.setAttribute("username",username);
                 session.setMaxInactiveInterval(1000);
                 response.sendRedirect("home.jsp");
             }
             else
             {
                 %>
                 
                 <script>alert('Invalid username/password');</script>
                 
            <% }
            }catch(Exception ex)
            {  
              System.out.println("Problem in login : "+ex);

                }
                       }

            %>
    </body>
</html>
