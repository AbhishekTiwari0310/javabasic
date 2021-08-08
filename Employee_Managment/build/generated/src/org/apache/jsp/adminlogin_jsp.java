package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import util.SqlUtil;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String username,password;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head style=\"margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    font-size: large;\n");
      out.write("    box-sizing: border-box;\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("        <link href=\"maincss.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script>\n");
      out.write("        function cancel()\n");
      out.write("           {\n");
      out.write("               document.location.href=\"choice.jsp\";\n");
      out.write("           }\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            .btn{\n");
      out.write("    height: 40px;\n");
      out.write("    width: 250px;\n");
      out.write("    border: 10px;\n");
      out.write("    font-weight: 600;\n");
      out.write("    font-size: 120%;\n");
      out.write("    cursor: pointer;\n");
      out.write("    padding: 10px;\n");
      out.write("    color: darkblue;\n");
      out.write("    background-color: white;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    margin: 15px 22px;\n");
      out.write("}\n");
      out.write("            .btn:hover{\n");
      out.write("\n");
      out.write("                background-color: dodgerblue;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: rgb(126, 156, 208);\n");
      out.write("    color: white;\n");
      out.write("    font-family: calibri;\">\n");
      out.write("         \n");
      out.write("        <div style=\"width: 290px;\n");
      out.write("    height: 400px;\n");
      out.write("    padding: 25px 25px;\n");
      out.write("    background-color: darkblue;\n");
      out.write("    margin-left: 50%;\n");
      out.write("    margin-top: 10%;\n");
      out.write("    margin-bottom: 2%;\n");
      out.write("    transform: translate(-50%, 0%);\n");
      out.write("    border-radius: 10px;\n");
      out.write("    box-shadow: 5px 5px 30px black;\">\n");
      out.write("            <h3 style=\"font-size: 200%;\n");
      out.write("    text-align: center;\n");
      out.write("    margin-bottom: 20px;\">LOGIN FORM</h3>\n");
      out.write("            <form method=\"POST\">\n");
      out.write("            <label for=\"username\" style=\"font-size: 120%;\n");
      out.write("    font-weight: 600;\n");
      out.write("    margin: 20px;\">USERNAME:</label>\n");
      out.write("            <input type=\"text\"  name=\"uname\" required style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    max-height: 40px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\">\n");
      out.write("        <br/>\n");
      out.write("        <label for=\"password\" style=\"font-size: 120%;\n");
      out.write("    font-weight: 600;\n");
      out.write("    margin: 20px;\">PASSWORD:</label>\n");
      out.write("        <input type=\"password\" name=\"pass\" required style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    max-height: 40px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\">\n");
      out.write("        <label style=\"font-size: 130%;\n");
      out.write("    font-weight: 600;\n");
      out.write("    margin: 40px;\">~.~~.~~.~~.~~.~~.~~.~~.~</label>\n");
      out.write("        <button  type=\"submit\" name=\"btn\" class=\"btn\" value=\"Login\" >Login</button>\n");
      out.write("        <button  type=\"button\" value=\"Cancel\" class=\"btn\" onclick=\"cancel()\">Cancel</button>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("            ");
 
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
                 
      out.write("\n");
      out.write("                 \n");
      out.write("                 <script>alert('Invalid username/password');</script>\n");
      out.write("                 \n");
      out.write("            ");
 }
            }catch(Exception ex)
            {  
              System.out.println("Problem in login : "+ex);

                }
                       }

            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
