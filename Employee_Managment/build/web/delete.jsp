<%-- 
    Document   : delete
    Created on : Mar 22, 2019, 2:53:21 PM
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
    box-sizing: border-box;
">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove</title>
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
    margin: 2px 20px;
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
        <form>
          <h3 style="font-size: 200%;
    text-align: center;
    margin-bottom: 20px;
    margin-top: 10px;
    color: white">DELETE</h3>
            <input type="number" class="txt" name="id" placeholder="Enter ID to Delete" style="padding: 5px;
    margin: 10px 22px;
    font-size: 120%;
    max-height: 40px;
    max-width: 500px;
    border-radius: 5px;
    border: 0;">
        <br>
        <br>
        <input type="submit" class="btn" name="Delete" value="Delete">
        <button  type="button" class="btn" value="Cancel" onclick="cancel()">Cancel</button>
        </form>
            </div>
        <%!int Id;%> 
        <%!String query,quer;%>
        <%           
            if(request.getParameter("Delete")!=null)
            {
                Id=Integer.parseInt(request.getParameter("id"));
                quer="select * from employee where id="+Id+"";
                try
                {
                    SqlUtil.connectDB();
                    ResultSet rs=SqlUtil.read(quer);
             
             if(rs.next())
             {
                 query="delete from employee where id="+Id+"";
                    SqlUtil.updateData(query);
                    %>
                    <script>alert('succefully Deleted');</script>
             <%}
             else
             {
                 %>
                 
                 <script>alert('Invalid ID Please Enter Right ID');</script>
                 
            <% }
                    
                    
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
