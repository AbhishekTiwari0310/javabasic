package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import util.SqlUtil;

public final class re_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        int id;
        String username,city,gender,email,DOB,phone;
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <form>\n");
      out.write("        <input type=\"text\" name=\"uname\" placeholder=\"enter username\">\n");
      out.write("        <br>\n");
      out.write("        <br> \n");
      out.write("        <select name=\"city\">\n");
      out.write("        <option>Indore</option>\n");
      out.write("        <option>Ujjain</option>\n");
      out.write("        <option>Gwalior</option>\n");
      out.write("        <option>Jabalpur</option>\n");
      out.write("        </select>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        Male<input type=\"radio\" name=\"gender\" value=\"Male\">\n");
      out.write("        &nbsp;\n");
      out.write("        Female<input type=\"radio\" name=\"gender\" value=\"Female\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"email\" name=\"email\" placeholder=\"Enter Email\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"text\" name=\"DOB\" placeholder=\"Enter DOB\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"number\" name=\"phone\" placeholder=\"Enter Phone_No\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"number\" name=\"id\" placeholder=\"Enter ID\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"number\" name=\"salary\" placeholder=\"Enter salary\">\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"submit\" name=\"add\" value=\"Done\">    \n");
      out.write("        </form>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            if(request.getParameter("add")!=null)
            {
                username=request.getParameter("uname");
                city=request.getParameter("city");
                gender=request.getParameter("gender");
                email=request.getParameter("email");
                DOB=request.getParameter("DOB");
                phone=request.getParameter("phone");
                id=Integer.parseInt(request.getParameter("id"));
                salary=Float.parseFloat(request.getParameter("salary"));                
                try
                {   
                    SqlUtil.connectDB();
                    String query="insert into employee values("+id+",'"+username+"','"+city+"','"+email+"','"+gender+"','"+DOB+"','"+phone+"',"+salary+")";
                    SqlUtil.updateData("query");
                }catch(Exception ex)
                {
                    System.out.println("problem"+ ex);
                }
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html> \n");
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
