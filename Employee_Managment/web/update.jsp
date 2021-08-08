 <%-- 
    Document   : update
    Created on : Mar 23, 2019, 7:26:43 PM
    Author     : 91799
--%>
<%@page import="util.SqlUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head style="margin: 0;
    padding: 0;
    font-size: large;
    box-sizing: border-box;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
        <link href="maincss.css" rel="stylesheet" type="text/css">
        <script>
        function cancel()
           {
               document.location.href="home.jsp";
           }
        </script>
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
        <div style="width: 290px;
    height: 200px;
    padding: 25px 25px;
    background-color: darkblue;
    margin-left: 50%;
    margin-top: 10%;
    margin-bottom: 2%;
    transform: translate(-50%, 0%);
    border-radius: 10px;
    box-shadow: 5px 5px 30px black;">
            <form method="POST">
            <h3 style="font-size: 200%;
    text-align: center;
    margin-bottom: 20px;
    margin-top: 1px;
    color: white">UPDATE</h3>
            <input type="number"  name="id" placeholder="Enter ID" required style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    height: 20px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
            <input type="submit" class="btn" name="submit" value="Search" style="height: 40px;
    width: 100px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 20px 22px;"> 
            <button  type="button" value="Cancel" onclick="cancel()" style="height: 40px;
    width: 100px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 1px 20px;">Cancel</button>
        </form>
        </div>
       <%!int id;%>
        <%!String query,username,city,gender,email,DOB,phone;%>
        <%!float salary;%>
        <%
                if(request.getParameter("submit")!=null){
                id=Integer.parseInt(request.getParameter("id"));
                query="select * from employee where id="+id+"";
                ResultSet rs=SqlUtil.read(query);
                try
                { 
                    while(rs.next())
                    {
                        username=rs.getString("username");
                        city=rs.getString("city");
                        email=rs.getString("email");
                        DOB=rs.getString("DOB");
                        gender=rs.getString("gender");
                        phone=rs.getString("phone");
                        salary=rs.getFloat("salary");
                        
                    }
              
                
                }catch(Exception ex){
                     System.out.println("problem"+ex);
                    }
                %>
                    
                <div style="width: 290px;
    height: 500px;
    padding: 25px 25px;
    background-color: darkblue;
    margin-left: 50%;
    margin-top: 10%;
    margin-bottom: 2%;
    transform: translate(-50%, 0%);
    border-radius: 10px;
    box-shadow: 5px 5px 30px black;">
                    <form method="POST">
            <h3 style="font-size: 200%;
    text-align: center;
    margin-bottom: 20px;
    margin-top: 10px;
    color: white">UPDATE FORM</h3>
        <input type="text" class="txt" name="uname" value="<%=username%>" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
        <input type="text" name="city" value="<%=city%>" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
        <input type="text" name="gender" value="<%=gender%>" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
        <input type="email" class="txt" value="<%=email%>" name="email" placeholder="Enter Email" style="
               padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
        <input type="date" class="txt" value="<%=DOB%>" name="DOB" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    width: 240px;
    border-radius: 5px;
    border: 0;">
        <br>
        <input type="text" class="txt" value="<%=phone%>" name="phone" placeholder="Enter Phone_No" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
        <input type="number" class="txt" name="salary" value="<%=salary%>" placeholder="Enter salary" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
       
        <input type="submit" class="btn" name="update" value="Done" style="height: 40px;
    width: 100px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 20px 22px;">    
        <button  type="button" class="btn" value="Cancel" onclick="cancel()" style="height: 40px;
    width: 100px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 1px 20px;">Cancel</button>
        </form>
        </div>
        <% System.out.println("username"+username);}%>
        <%
            if(request.getParameter("update")!=null)
            {
                username=request.getParameter("uname");
                city=request.getParameter("city");
                gender=request.getParameter("gender");
                email=request.getParameter("email");
                DOB=request.getParameter("DOB");
                phone=request.getParameter("phone");
                salary=Float.parseFloat(request.getParameter("salary"));
               
                try{
                    
                    
                SqlUtil.connectDB();
                SqlUtil.updateData("update employee set username='"+username+"',city='"+city+"',email='"+email+"',gender='"+gender+"' where id="+id+";");
                }catch(Exception ex)
                {
                    System.out.println("problem"+ex);
                }
            }
        %>
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
