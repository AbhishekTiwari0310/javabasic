<%-- 
    Document   : emp_logout
    Created on : Jun 23, 2019, 10:48:29 AM
    Author     : 91799
--%>

<%
        session=request.getSession();
        session.setMaxInactiveInterval(0);
        
        try{
        response.sendRedirect("choice.jsp");
    }catch(Exception ex)
    {
        System.out.println("Problem "+ex);
    }
        %>
