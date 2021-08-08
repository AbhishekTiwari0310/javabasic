<%-- 
    Document   : adminlogout
    Created on : Jun 15, 2019, 9:48:05 PM
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