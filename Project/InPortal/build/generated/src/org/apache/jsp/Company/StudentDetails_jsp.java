package org.apache.jsp.Company;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class StudentDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>InPortal::StudentDetails</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "CompanyHomeHeader.jsp", out, false);
      out.write("\n");
      out.write("         <div class=\"container\">\n");
      out.write("           \n");
      out.write("              <table class=\"table table-striped table-bordered \" style=\"width: 43em;\" id=\"example\">\n");
      out.write("\n");
      out.write("                <thead class=\"\" >\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"col\">#</th>\n");
      out.write("                        <th scope=\"col\">Student Name</th>\n");
      out.write("                        <th scope=\"col\">Internship Name</th>\n");
      out.write("                          <th scope=\"col\">Contact</th>\n");
      out.write("                            <th scope=\"col\">Internship Status</th>\n");
      out.write("                              <th scope=\"col\">Payment Status</th>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                ");


                    String sview;

                    sview = "select * from tbl_intership i inner join tbl_request re on i.internship_id=re.internship_id inner join tbl_student st on st.student_id=re.student_id ";

                    ResultSet rs1 = con.selectCommand(sview);
                    int i = 0;

                
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("                    ");
                    while (rs1.next()) {
                            i++;
                    
      out.write(" \n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.print(i);
      out.write("  \n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.print(rs1.getString("student_name"));
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.print(rs1.getString("title"));
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            ");
      out.print(rs1.getString("student_contact"));
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                        <!-- Intenship status-->\n");
      out.write("                        ");

                        if(rs1.getString("request_active").equals("1"))
                        {
                        
      out.write("\n");
      out.write("                         <td>\n");
      out.write("                           Completed\n");
      out.write("                        </td>\n");
      out.write("                        ");

                        }
                        else{
                        
      out.write("\n");
      out.write("                         <td>\n");
      out.write("                            In Progress\n");
      out.write("                        </td>\n");
      out.write("                       ");

                        }
                       
      out.write("\n");
      out.write("                       <!-- Payment status-->\n");
      out.write("                        ");

                        if(rs1.getString("payment_status").equals("1"))
                        {
                        
      out.write("\n");
      out.write("                         <td>\n");
      out.write("                           Payed\n");
      out.write("                        </td>\n");
      out.write("                        ");

                        }
                        else{
                        
      out.write("\n");
      out.write("                         <td>\n");
      out.write("                           Not Payed\n");
      out.write("                        </td>\n");
      out.write("                       ");

                        }
                       
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("             \n");
      out.write("             \n");
      out.write("         </div>\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "CompanyHomeFooter.jsp", out, false);
      out.write("   \n");
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
