package org.apache.jsp.Company;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class CompanyHomeHeader_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>InPortal::Student HomePage</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx\" crossorigin=\"anonymous\">\n");
      out.write("         <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.5.0/css/all.css\" integrity=\"sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU\" crossorigin=\"anonymous\">\n");
      out.write("           <link href=\"../Assets/CompanyPageProperties/headers.css\" rel=\"stylesheet\">\n");
      out.write("             <style>\n");
      out.write("      .bd-placeholder-img {\n");
      out.write("        font-size: 1.125rem;\n");
      out.write("        text-anchor: middle;\n");
      out.write("        -webkit-user-select: none;\n");
      out.write("        -moz-user-select: none;\n");
      out.write("        user-select: none;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      @media (min-width: 768px) {\n");
      out.write("        .bd-placeholder-img-lg {\n");
      out.write("          font-size: 3.5rem;\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .b-example-divider {\n");
      out.write("        height: 3rem;\n");
      out.write("        background-color: rgba(0, 0, 0, .1);\n");
      out.write("        border: solid rgba(0, 0, 0, .15);\n");
      out.write("        border-width: 1px 0;\n");
      out.write("        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .b-example-vr {\n");
      out.write("        flex-shrink: 0;\n");
      out.write("        width: 1.5rem;\n");
      out.write("        height: 100vh;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .bi {\n");
      out.write("        vertical-align: -.125em;\n");
      out.write("        fill: currentColor;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .nav-scroller {\n");
      out.write("        position: relative;\n");
      out.write("        z-index: 2;\n");
      out.write("        height: 2.75rem;\n");
      out.write("        overflow-y: hidden;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      .nav-scroller .nav {\n");
      out.write("        display: flex;\n");
      out.write("        flex-wrap: nowrap;\n");
      out.write("        padding-bottom: 1rem;\n");
      out.write("        margin-top: -1px;\n");
      out.write("        overflow-x: auto;\n");
      out.write("        text-align: center;\n");
      out.write("        white-space: nowrap;\n");
      out.write("        -webkit-overflow-scrolling: touch;\n");
      out.write("      }\n");
      out.write("      a.dropdown-item {\n");
      out.write("     font-weight:100!important;\n");
      out.write("      }\n");
      out.write("      .nav-link:hover{\n");
      out.write("         color: orange!important; \n");
      out.write("        \n");
      out.write("      }\n");
      out.write("    \n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <svg xmlns=\"http://www.w3.org/2000/svg\" style=\"display: none;\">\n");
      out.write("  <symbol id=\"bootstrap\" viewBox=\"0 0 118 94\">\n");
      out.write("    <title>Bootstrap</title>\n");
      out.write("    <path fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z\"></path>\n");
      out.write("  </symbol>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <symbol id=\"table\" viewBox=\"0 0 16 16\">\n");
      out.write("    <path d=\"M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z\"/>\n");
      out.write("  </symbol>\n");
      out.write("  \n");
      out.write(" \n");
      out.write("</svg>\n");
      out.write("<main style=\" background-color: #15151f;position:sticky;top: 0;z-index: 100;\">\n");
      out.write("       <header class=\"p-3 mb-3 border-bottom\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start\">\n");
      out.write("          <div style=\"font-size: xx-large;color:white;\">\n");
      out.write("              <i class=\"fab fa-linkedin-in\" style=\"color: orange;\"></i>Portal\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <ul id=\"menu12\" class=\"nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0\" style=\"margin-left:5em;\">\n");
      out.write("          <li><a href=\"#\" class=\"nav-link px-2 text-white\">Overview</a></li>\n");
      out.write("         \n");
      out.write("       \n");
      out.write("           <li class=\"nav-item dropdown\">\n");
      out.write("            <a class=\"nav-link px-2 text-white dropdown-toggle\" href=\"#\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">Verification <i class=\"fas fa-caret-down\"></i></a>\n");
      out.write("            <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a class=\"dropdown-item\" href=\"InternshipApproval.jsp\">Approval</a></li>\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"InternshipApproved.jsp\">Approved</a></li>\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"InternshipRejected.jsp\">Rejected</a></li>\n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item dropdown\">\n");
      out.write("            <a class=\"nav-link px-2 text-white dropdown-toggle\" href=\"#\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">Internship <i class=\"fas fa-caret-down\"></i></a>\n");
      out.write("            <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a class=\"dropdown-item\" href=\"InternshipRegister.jsp\">Register</a></li>\n");
      out.write("            \n");
      out.write("              <li><a class=\"dropdown-item\" href=\"AddSyllabus.jsp\">Add Syllabus</a></li>\n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"#\" class=\"nav-link px-2 text-white\" data-toggle=\"modal\" data-target=\"#exampleModalScrollable\"> \n");
      out.write("                                    Feedback\n");
      out.write("                                    </a></li>\n");
      out.write("        </ul>\n");
      out.write("\n");
      out.write("        <form class=\"col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3\" role=\"search\">\n");
      out.write("          <input type=\"search\" class=\"form-control\" placeholder=\"Search...\" aria-label=\"Search\">\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <div class=\"dropdown text-end\">\n");
      out.write("          <a href=\"#\" class=\"nav-link px-2 text-white text-decoration-none dropdown-toggle\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("            <img src=\"../Assets/CompanyLogo/");
 out.print(session.getAttribute("logo"));
      out.write("\" alt=\"mdo\" width=\"32\" height=\"32\" class=\"rounded-circle\">\n");
      out.write("            <i class=\"fas fa-caret-down\"></i>\n");
      out.write("          </a>\n");
      out.write("          <ul  class=\"dropdown-menu text-small\">\n");
      out.write("            <li><a class=\"dropdown-item\" href=\"CompanyProfile.jsp\"><i class=\"fas fa-user-circle\"></i> My Profile</a></li>\n");
      out.write("            <li><a class=\"dropdown-item\" href=\"CompanyChat.jsp\"><i class=\"fas fa-comment-dots\"></i> Chat</a></li>\n");
      out.write("            <li><a class=\"dropdown-item\" href=\"CompanyChangePassword.jsp\"><i class=\"fas fa-lock\"></i> Change Password</a></li>\n");
      out.write("            <form method=\"post\">\n");
      out.write("            ");

            if(request.getParameter("btnsubmit")!=null){
             String status="update tbl_company set isactive='0' where company_id='"+session.getAttribute("company_id")+"'";
             con.executeCommand(status);
           
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("                  window.location.href = '../Guest/Login.jsp';\n");
      out.write("            </script>\n");
      out.write("            ");

                 }
            
      out.write("\n");
      out.write("            <li><a class=\"dropdown-item\" href=\"#\"><i class=\"fa fa-sign-out\"><input type=\"submit\" name=\"btnsubmit\" value=\"Sign out\" style=\"border-style: none;background-color: white;color: #525252;\"></i></a></li>\n");
      out.write("\n");
      out.write(" \n");
      out.write("          </form>\n");
      out.write("          \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write(" </main>\n");
      out.write(" <!--feedback-->\n");
      out.write("    ");

    if (request.getParameter("btnsubmit2") != null) {
                String sel4 = "insert into tbl_feedback(feedback_content,company_id) values('"+request.getParameter("txt_feedback")+"','"+session.getAttribute("company_id")+"')";
                 if (con.executeCommand(sel4)) {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Feedback Submitted\");\n");
      out.write("           \n");
      out.write("        </script>\n");
      out.write("        ");

        } else {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Feedback submission Failed\");\n");
      out.write("           \n");
      out.write("        </script>\n");
      out.write("        ");

                }
            }
    
      out.write("\n");
      out.write("    <form method=\"post\">\n");
      out.write("        <div class=\"modal fade\" id=\"exampleModalScrollable\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalScrollableTitle\" aria-hidden=\"true\">\n");
      out.write("            <div class=\"modal-dialog modal-dialog-scrollable\" role=\"document\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <h5 class=\"modal-title\" id=\"exampleModalScrollableTitle\">Write your feedback</h5>\n");
      out.write("\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("                        <label class=\"form-label\">Feedback:</label>\n");
      out.write("                        <textarea class=\"form-control\" rows=\"5\" cols=\"50\" name=\"txt_feedback\" id=\"id_address\" ></textarea>\n");
      out.write("                        <br>\n");
      out.write("                      \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-footer\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\" name=\"btnsubmit2\">Submit</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("\n");
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
