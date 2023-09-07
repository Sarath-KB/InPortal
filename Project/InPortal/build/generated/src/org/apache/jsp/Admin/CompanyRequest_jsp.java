package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class CompanyRequest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <!DOCTYPE html>\n");
      out.write("    <html>\n");
      out.write("        <head>\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("            <title>InPortal::Make Request</title>\n");
      out.write("            <style>\n");
      out.write("                table.dataTable thead>tr>th.sorting:before, table.dataTable thead>tr>th.sorting:after, table.dataTable thead>tr>th.sorting_asc:before, table.dataTable thead>tr>th.sorting_asc:after, table.dataTable thead>tr>th.sorting_desc:before, table.dataTable thead>tr>th.sorting_desc:after, table.dataTable thead>tr>th.sorting_asc_disabled:before, table.dataTable thead>tr>th.sorting_asc_disabled:after, table.dataTable thead>tr>th.sorting_desc_disabled:before, table.dataTable thead>tr>th.sorting_desc_disabled:after, table.dataTable thead>tr>td.sorting:before, table.dataTable thead>tr>td.sorting:after, table.dataTable thead>tr>td.sorting_asc:before, table.dataTable thead>tr>td.sorting_asc:after, table.dataTable thead>tr>td.sorting_desc:before, table.dataTable thead>tr>td.sorting_desc:after, table.dataTable thead>tr>td.sorting_asc_disabled:before, table.dataTable thead>tr>td.sorting_asc_disabled:after, table.dataTable thead>tr>td.sorting_desc_disabled:before, table.dataTable thead>tr>td.sorting_desc_disabled:after {\n");
      out.write("\n");
      out.write("                    opacity: .525 !important;\n");
      out.write("\n");
      out.write("                }\n");
      out.write("                ::-webkit-scrollbar{\n");
      out.write("                    background: transparent;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("            </style> \n");
      out.write("                <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.5.0/css/all.css\" integrity=\"sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU\" crossorigin=\"anonymous\">\n");
      out.write("            <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>\n");
      out.write("            <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css'>\n");
      out.write("            <link rel='stylesheet' href='https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css'>\n");
      out.write("            <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>\n");
      out.write("            <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>\n");
      out.write("            <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx\" crossorigin=\"anonymous\">\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("       \n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <br>\n");
      out.write("             <br>\n");
      out.write("              <br>\n");
      out.write("                <br>\n");
      out.write("              <br>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <br>\n");
      out.write("                <table class=\"table table-striped table-bordered\" style=\"width:100%\" id=\"example\">\n");
      out.write("\n");
      out.write("                    <thead class=\"\" >\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"col\">#</th>\n");
      out.write("                            <th scope=\"col\">Company Request</th>\n");
      out.write("                            <th scope=\"col\">Request Date</th>\n");
      out.write("                            <th scope=\"col\">Admin Reply</th>\n");
      out.write("                            <th scope=\"col\">Replay Date</th>\n");
      out.write("                            <th scope=\"col\">Status</th>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    ");


                        String sview;

                        sview = "select * from tbl_makerequest order by makerequest_id desc";

                        ResultSet rs1 = con.selectCommand(sview);
                        int i = 0;

                    
      out.write("\n");
      out.write("                    <tbody>\n");
      out.write("                        ");
                    while (rs1.next()) {
                                i++;
                        
      out.write(" \n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(i);
      out.write("  \n");
      out.write("                            </td>\n");
      out.write("\n");
      out.write("                            <td >\n");
      out.write("                                <div style=\"width: 350px; max-height: 110px;overflow-y: scroll\">\n");
      out.write("                                    ");
      out.print(rs1.getString("company_request"));
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(rs1.getString("company_request_date"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <!--Admin Reply-->\n");
      out.write("                            ");

                                if (rs1.getString("admin_rply").equals("Nothing")) {
                            
      out.write("\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"CompanyRequest.jsp?req_id=");
      out.print(rs1.getString("makerequest_id"));
      out.write("\" data-toggle=\"modal\" data-target=\"#exampleModalScrollable\"><button class=\"btn btn-primary\" name=\"btnyo\"  ><i class=\"fas fa-reply\">Reply</i></button></i></a>\n");
      out.write("                            </td>\n");
      out.write("                            ");

                            } else {
                            
      out.write("\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(rs1.getString("admin_rply"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                            <!--Admin reply ends-->\n");
      out.write("\n");
      out.write("                            <td>\n");
      out.write("                                ");
      out.print(rs1.getString("admin_rply_date"));
      out.write("\n");
      out.write("                            </td>\n");
      out.write("                            <!--Admin Read-->\n");
      out.write("                            ");

                                if (rs1.getString("isactive").equals("0")) {
                            
      out.write("\n");
      out.write("                            <td>\n");
      out.write("                                <span class=\"badge badge-warning\"><i class=\"fas fa-comment-slash\">Not seen</i></span>\n");
      out.write("                            </td>\n");
      out.write("                            ");

                            } else {
                            
      out.write("\n");
      out.write("                            <td>\n");
      out.write("\n");
      out.write("                                <span class=\"badge badge-success\"><i class=\"far fa-comment-lines\">Read</i></span>\n");
      out.write("                            </td>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                            <!--Admin read ends-->\n");
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <script src='https://code.jquery.com/jquery-3.5.1.js'></script>\n");
      out.write("            <script src='https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js'></script>\n");
      out.write("            <script src='https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js'></script>\n");
      out.write("\n");
      out.write("            <script>\n");
      out.write("                $(document).ready(function() {\n");
      out.write("                    $('#example').DataTable();\n");
      out.write("                });\n");
      out.write("            </script>   \n");
      out.write("            <!--model pop up-->\n");
      out.write("            ");

                 if(request.getParameter("yobu")!=null) {
                    String sel45 = "update tbl_makerequest set admin_rply='"+request.getParameter("txt_mssge")+"',company_request_date='curdate()' where makerequest_id='"+request.getParameter("req_id")+"'";
                     boolean status = con.executeCommand(sel45);
                    System.out.println(sel45);
                    if (con.executeCommand(sel45)) {
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("//                alert(\"Request Submitted\");\n");
      out.write("\n");
      out.write("                window.location(\"CompanyRequestFrame.jsp\");\n");
      out.write("            </script>\n");
      out.write("            ");

            } else {
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("                alert(\"Request submission Failed\");\n");
      out.write("\n");
      out.write("            </script>\n");
      out.write("            ");

                    }
                }
            
      out.write("\n");
      out.write("            <form method=\"post\">\n");
      out.write("                <div class=\"modal fade\" id=\"exampleModalScrollable\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalScrollableTitle\" aria-hidden=\"true\">\n");
      out.write("                    <div class=\"modal-dialog modal-dialog-scrollable\" role=\"document\">\n");
      out.write("                        <div class=\"modal-content\" style=\"position: relative;top: 5em;\">\n");
      out.write("                            <div class=\"modal-header\">\n");
      out.write("                                <h5 class=\"modal-title\" id=\"exampleModalScrollableTitle\">Answer to the company </h5>\n");
      out.write("\n");
      out.write("                                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                    <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                </button>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-body\">\n");
      out.write("                              \n");
      out.write("                                <label class=\"form-label\">Write down your decision:</label>\n");
      out.write("                                <textarea class=\"form-control\" rows=\"10\" cols=\"50\" name=\"txt_mssge\" id=\"id_address\" ></textarea>\n");
      out.write("                                <br>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-footer\">\n");
      out.write("                                <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-primary\" name=\"yobu\">Submit</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      \n");
      out.write("        <script src='https://code.jquery.com/jquery-3.5.1.js'></script>\n");
      out.write("        <script src='https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js'></script>\n");
      out.write("        <script src='https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js'></script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("                $(document).ready(function() {\n");
      out.write("                    $('#example').DataTable();\n");
      out.write("                });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
