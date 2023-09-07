package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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

      out.write('\n');
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>InPortal::Login</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta charset=\"UTF-8\" />\n");
      out.write("    <!-- //Meta tag Keywords -->\n");
      out.write("    <link href=\"//fonts.googleapis.com/css2?family=Kumbh+Sans:wght@300;400;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <!--/Style-CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/css/style.css\" type=\"text/css\" media=\"all\" />\n");
      out.write("    <!--//Style-CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/css/font-awesome.min.css\" type=\"text/css\" media=\"all\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"w3l-signinform\">\n");
      out.write("        <!-- container -->\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            <!-- main content -->\n");
      out.write("            <div class=\"w3l-form-info\">\n");
      out.write("                <div class=\"w3_info\">\n");
      out.write("                    <h1>Welcome Back</h1>\n");
      out.write("                    <p class=\"sub-para\"></p>\n");
      out.write("                    <h2>Log In</h2>\n");
      out.write("                    <form method=\"post\">\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <span><i class=\"fa fa-user\" aria-hidden=\"true\"></i></span>\n");
      out.write("                            <input type=\"email\" placeholder=\"Email or Username\" required=\"\" name=\"txtemailid\" autocomplete=\"off\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-group two-groop\">\n");
      out.write("                            <span><i class=\"fa fa-key\" aria-hidden=\"true\"></i></span>\n");
      out.write("                            <input type=\"Password\" placeholder=\"Password\" required=\"\" name=\"txtpassword\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-row bottom\">\n");
      out.write("<!--                            <div class=\"form-check\">\n");
      out.write("                                <input type=\"checkbox\" id=\"remenber\" name=\"remenber\" value=\"remenber\">\n");
      out.write("                                <label for=\"remenber\"> Remember me?</label>\n");
      out.write("                            </div>-->\n");
      out.write("<!--                            <a href=\"#url\" class=\"forgot\">Forgot password?</a>-->\n");
      out.write("                        </div>\n");
      out.write("                        <button class=\"btn btn-primary btn-block\" type=\"submit\" name=\"btnsubmit\">Log In</button>\n");
      out.write("                    </form>\n");
      out.write("                \n");
      out.write("                    <p class=\"account\">Don't have an account? <a href=\"GuestHomePage.jsp\">Register</a></p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- //main content -->\n");
      out.write("        </div>\n");
      out.write("        <!-- //container -->\n");
      out.write("    </div>\n");
      out.write("         ");

        String msg="";
        if(request.getParameter("btnsubmit")!=null){
        String select = "select admin_name,admin_password,admin_id from tbl_admin where admin_email='"+request.getParameter("txtemailid")+"' and admin_password='"+request.getParameter("txtpassword")+"'";
        ResultSet rs1 = con.selectCommand(select);
        
        String cselect = "select company_email,company_name,company_logo,company_password,company_id,company_vstatus,sector_id from tbl_company where company_email='"+request.getParameter("txtemailid")+"' and company_password='"+request.getParameter("txtpassword")+"' and company_vstatus='1'";
        ResultSet rs2 = con.selectCommand(cselect);
        
         String sselect = "select student_email,student_name,student_photo,student_password,student_id from tbl_student where student_email='"+request.getParameter("txtemailid")+"' and student_password='"+request.getParameter("txtpassword")+"'";
        ResultSet rs3 = con.selectCommand(sselect);
        System.out.println(sselect);
    
        if(rs1.next()){
        session.setAttribute("admin_id", rs1.getString("admin_id"));
        session.setAttribute("admin_name", rs1.getString("admin_name"));
        response.sendRedirect("../Admin/AdminHomePage.jsp");
        }
        else if(rs2.next()){
        session.setAttribute("company_id", rs2.getString("company_id"));
        session.setAttribute("company_name", rs2.getString("company_name"));
        session.setAttribute("sector_id", rs2.getString("sector_id"));
        session.setAttribute("company_email", rs2.getString("company_email"));
         session.setAttribute("logo", rs2.getString("company_logo"));
        response.sendRedirect("../Company/CompanyHomePage2.jsp");
        String status="update tbl_company set isactive='1' where company_id='"+session.getAttribute("company_id")+"'";
        con.executeCommand(status);
        }
         else if(rs3.next()){
        session.setAttribute("student_id", rs3.getString("student_id"));
        session.setAttribute("student_name", rs3.getString("student_name"));
         session.setAttribute("photo", rs3.getString("student_photo"));
        response.sendRedirect("../Student/StudentHomePage2.jsp");
         String status="update tbl_student set isactive='1' where student_id='"+session.getAttribute("student_id")+"'";
        con.executeCommand(status);
        }
        
        else{
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("       alert(\"Please wait for verification or Something went wrong\");\n");
      out.write("         </script>\n");
      out.write("         ");

        }
}
         
        
      out.write("  \n");
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
