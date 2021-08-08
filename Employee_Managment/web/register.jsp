<%-- 
    Document   : register
    Created on : Mar 22, 2019, 2:10:14 PM
    Author     : 91799
--%>
<%@page import="util.SqlUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head style="margin: 0;
    padding: 0;
    font-size: large;
    box-sizing: border-box;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="maincss.css" rel="stylesheet" type="text/css">
        <script>
        function cancel()
           {
               document.location.href="home.jsp";
           }
        </script>
        <style>
            .btn
            {
                height: 40px;
    width: 100px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: darkblue;
    background-color: white;
    border-radius: 10px;
    margin: 25px 20px;
            }
            .btn:hover{

                background-color: dodgerblue;
}
        </style>
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
        <div style="    width: 290px;
    height: 600px;
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
    margin-bottom: 20px;">REGISTRATION FORM</h3>
        <form style="">
            <input type="text" class="txt" name="uname" placeholder="Enter Username" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
       
        <select name="city" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    width: 250px;
    border-radius: 5px;
    border: 0;">
        <option>Indore</option>
        <option>Ujjain</option>
        <option>Gwalior</option>
        <option>Jabalpur</option>
        </select>
        <br>
        <label style="margin: 15px 22px;">Male</label><input type="radio" name="gender" value="Male">
        &nbsp;
        <label style="margin: 5px 0px;">Female</label><input type="radio" name="gender" value="Female" style="    margin: 3px 20px;">
        <br>
        <input type="email" name="email" placeholder="Enter Email" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
      
        <input type="password" name="pass" placeholder="Enter Password" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
     
        <input type="date" name="DOB" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    width: 240px;
    border: 0;">
        <br>
     
        <input type="number" name="phone" placeholder="Enter Phone Number" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
   
        <input type="number" name="id" placeholder="Enter ID" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
        <input type="number" name="salary" placeholder="Enter Salary" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
        <input type="submit" class="btn" name="add" value="Done">
        <input type="button" class="btn" value="Cancel" onclick="cancel()">
        </form>
        </div>
        <%!int id;%>
        <%!String query,username,city,gender,email,DOB,phone,password;%>
        <%!float salary;%>
        <%
            if(request.getParameter("add")!=null)
            {
                username=request.getParameter("uname");
                city=request.getParameter("city");
                gender=request.getParameter("gender");
                email=request.getParameter("email");
                password=request.getParameter("pass");
                DOB=request.getParameter("DOB");
                phone=request.getParameter("phone");
                id=Integer.parseInt(request.getParameter("id"));
                salary=Float.parseFloat(request.getParameter("salary"));
                try{
                SqlUtil.connectDB();
                query="insert into employee values('"+username+"','"+city+"','"+email+"','"+gender+"','"+DOB+"','"+phone+"',"+salary+","+id+",'"+password+"')";
                SqlUtil.updateData(query);
                }catch(Exception ex)
                {
                    System.out.println("problem"+ex);
                    ex.printStackTrace();
                }
            }%>
            </body>
      <% }
        else
        {%>
        <script>
            alert('Invalid username/password');document.location.href='adminlogin.jsp'
        </script>
        <% }   
    %>
    
    
</html>
