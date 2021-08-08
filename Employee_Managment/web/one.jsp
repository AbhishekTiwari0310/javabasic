<%-- 
    Document   : one
    Created on : Mar 23, 2019, 9:54:31 PM
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
        <title>View one</title>
        <link href="maincss.css" rel="stylesheet" type="text/css">
        <style> 
		.resp-tab
		{
			overflow-x: auto;
		}
		h1
		{
			font-style: italic;
			text-align: center;
			color: darkblue; 
		}
		table
		{
			border-collapse: collapse;
			width: 100%;
			font-size: 18px;
			font-style: italic;
			text-align: center;
		}
		th{
			background-color: darkblue;
			color: white;
		}
		th,td{
			border: 2px solid #ddd;
		}
	</style>
        <script>
        function cancel()
           {
               document.location.href="profile.jsp";
           }
        </script>
    </head>
    <body style="background-color: rgb(126, 156, 208);
    color: white;
    font-family: calibri;">
    <div style="width: 330px;
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
    margin-bottom: 20px;">PROFILE</h3>
    <form>
        <input type="number" name="id" placeholder="Enter Employee ID" required style="padding: 5px;
    margin: 10px 45px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
            <br>
            <br>
            <input type="submit" name="submit"  value="Search" style="height: 40px;
    width: 100px;
    border: 10px;
    font-weight: 600;
    font-size: 120%;
    cursor: pointer;
    padding: 10px;
    color: dodgerblue;
    background-color: white;
    border-radius: 10px;
    margin: 1px 45px;">    
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
    margin: 1px 2px;">Cancel</button>
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
                    %>
                    <table class="resp-table">
                        <th>id</th><th>Name</th><th>City</th><th>Email</th><th>DOB</th><th>Gender</th><th>phone</th><th>salary</th>                        
                    
                    <%
                    while(rs.next())
                    {
                        %>
                        <tr>
                        <%
                        id=rs.getInt("id");
                        username=rs.getString("username");
                        city=rs.getString("city");
                        email=rs.getString("email");
                        DOB=rs.getString("DOB");
                        gender=rs.getString("gender");
                        phone=rs.getString("phone");
                        salary=rs.getFloat("salary");
                     %>   
                        <td><%=id%></td>
                        <td><%=username%></td>
                        <td><%=city%></td>
                        <td><%=email%></td>                  
                        <td><%=DOB%></td>
                        <td><%=gender%></td>
                        <td><%=phone%></td>
                        <td><%=salary%></td>
                        </tr>                        
                    <%}%>
                        
                    </table>
                <%
                }
                catch(Exception ex)
                {
                    System.out.println("problem"+ex);
                }
            }
        %>
    </body>
</html>
