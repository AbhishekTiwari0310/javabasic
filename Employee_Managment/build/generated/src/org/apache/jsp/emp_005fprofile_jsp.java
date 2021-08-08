package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import util.SqlUtil;
import java.sql.ResultSet;

public final class emp_005fprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String query,username,city,gender,email,DOB,phone,password;
float salary;
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
      out.write("   <head style=\"margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    font-size: large;\n");
      out.write("    box-sizing: border-box;\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Employee Home</title>\n");
      out.write("        <link href=\"maincss.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script>\n");
      out.write("        function Done()\n");
      out.write("           {\n");
      out.write("               document.location.href=\"emp_home.jsp\";\n");
      out.write("           }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

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
                        
                    }
      out.write("\n");
      out.write("                    \n");
      out.write("                    <body style=\"background-color: rgb(126, 156, 208);\n");
      out.write("    color: white;\n");
      out.write("    font-family: calibri;\">\n");
      out.write("        <div style=\"width: 290px;\n");
      out.write("    height: 460px;\n");
      out.write("    padding: 25px 25px;\n");
      out.write("    background-color: darkblue;\n");
      out.write("    margin-left: 50%;\n");
      out.write("    margin-top: 10%;\n");
      out.write("    margin-bottom: 2%;\n");
      out.write("    transform: translate(-50%, 0%);\n");
      out.write("    border-radius: 10px;\n");
      out.write("    box-shadow: 5px 5px 30px black;\">\n");
      out.write("        <form>\n");
      out.write("            <h3 style=\"font-size: 200%;\n");
      out.write("    text-align: center;\n");
      out.write("    margin-bottom: 20px;\n");
      out.write("    margin-top: 1px;\n");
      out.write("    color: white\">PROFILE</h3>\n");
      out.write("        <form>\n");
      out.write("            <div ");
      out.print(username);
      out.write(" style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    height: 20px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\"> \n");
      out.write("         \n");
      out.write("            <input type=\"text\" name=\"city\" value=\"");
      out.print(city);
      out.write("\" style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    height: 20px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\">\n");
      out.write("        \n");
      out.write("            <input type=\"text\" name=\"gender\" value=\"");
      out.print(gender);
      out.write("\" style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    height: 20px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\">\n");
      out.write("        \n");
      out.write("            <input type=\"email\" class=\"txt\" value=\"");
      out.print(email);
      out.write("\" name=\"email\" style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    height: 20px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\">\n");
      out.write("        \n");
      out.write("            <input type=\"text\" class=\"txt\" value=\"");
      out.print(DOB);
      out.write("\" name=\"DOB\" style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    height: 20px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\">\n");
      out.write("        \n");
      out.write("            <input type=\"text\" class=\"txt\" value=\"");
      out.print(phone);
      out.write("\" name=\"phone\" style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    height: 20px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\">\n");
      out.write("        \n");
      out.write("            <input type=\"text\" class=\"txt\" name=\"salary\" value=\"");
      out.print(salary);
      out.write("\" style=\"padding: 5px;\n");
      out.write("    margin: 10px 22px;\n");
      out.write("    font-size: 120%;\n");
      out.write("    height: 20px;\n");
      out.write("    max-width: 500px;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    border: 0;\"> \n");
      out.write("            <button  type=\"button\" class=\"btn\" onclick=\"Done()\" style=\"height: 40px;\n");
      out.write("    width: 100px;\n");
      out.write("    border: 10px;\n");
      out.write("    font-weight: 600;\n");
      out.write("    font-size: 120%;\n");
      out.write("    cursor: pointer;\n");
      out.write("    padding: 10px;\n");
      out.write("    color: dodgerblue;\n");
      out.write("    background-color: white;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    margin: 5px 100px;\">Done</button>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("                ");

                }
                catch(Exception ex)
                {
                    System.out.println("problem"+ex);
                }
                }
        else
        {
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert('Invalid username/password');document.location.href='emp_login.jsp'\n");
      out.write("        </script>\n");
      out.write("        ");
 }   
    
      out.write("\n");
      out.write("</body>\n");
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
