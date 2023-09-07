package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Report3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>InPortal::Report3</title>\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>    \n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/searchpanes/2.0.2/css/searchPanes.dataTables.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/select/1.4.0/css/select.dataTables.min.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-3.5.1.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/searchpanes/2.0.2/js/dataTables.searchPanes.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/select/1.4.0/js/dataTables.select.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://code.highcharts.com/highcharts.js\"></script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            \n");
      out.write("       \n");
      out.write("        <table id=\"example\" class=\"display\" style=\"width:100%\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sector Name</th>\n");
      out.write("                    <th>Company Name</th>\n");
      out.write("                    <th>License</th>\n");
      out.write("                       <th>Position</th>\n");
      out.write("                          <th>Contact</th>\n");
      out.write("                             <th>Location</th>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            ");

            String select12="select * from tbl_sector sec inner join tbl_position pos on sec.sector_id=pos.sector_id inner join tbl_company co on co.sector_id=sec.sector_id";
            ResultSet rs=con.selectCommand(select12);
            while(rs.next())
            {    
            
      out.write("\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs.getString("sector_name"));
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                    <td>");
      out.print(rs.getString("Company_name"));
      out.write("</td>\n");
      out.write("                    \n");
      out.write("                    <td>");
      out.print(rs.getString("company_liscenceno"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("position_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("Company_contact"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("Company_location"));
      out.write("</td>\n");
      out.write("                   \n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("            </tbody>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("            <tfoot>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Position</th>\n");
      out.write("                    <th>Office</th>\n");
      out.write("                    <th>Age</th>\n");
      out.write("                    <th>Start date</th>\n");
      out.write("                    <th>Salary</th>\n");
      out.write("                </tr>\n");
      out.write("            </tfoot>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("      </div>  \n");
      out.write("\n");
      out.write("<script>\n");
      out.write("            $(document).ready(function() {\n");
      out.write("                // Create DataTable\n");
      out.write("                var table = $('#example').DataTable({\n");
      out.write("                    dom: 'Pfrtip',\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                // Create the chart with initial data\n");
      out.write("                var container = $('<div/>').insertBefore(table.table().container());\n");
      out.write("\n");
      out.write("                var chart = Highcharts.chart(container[0], {\n");
      out.write("                    chart: {\n");
      out.write("                        type: 'pie',\n");
      out.write("                    },\n");
      out.write("                    title: {\n");
      out.write("                        text: 'Staff Count Per Position',\n");
      out.write("                    },\n");
      out.write("                    series: [\n");
      out.write("                        {\n");
      out.write("                            data: chartData(table),\n");
      out.write("                        },\n");
      out.write("                    ],\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                // On each draw, update the data in the chart\n");
      out.write("                table.on('draw', function() {\n");
      out.write("                    chart.series[0].setData(chartData(table));\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            function chartData(table) {\n");
      out.write("                var counts = {};\n");
      out.write("\n");
      out.write("                // Count the number of entries for each position\n");
      out.write("                table\n");
      out.write("                        .column(1, {search: 'applied'})\n");
      out.write("                        .data()\n");
      out.write("                        .each(function(val) {\n");
      out.write("                            if (counts[val]) {\n");
      out.write("                                counts[val] += 1;\n");
      out.write("                            } else {\n");
      out.write("                                counts[val] = 1;\n");
      out.write("                            }\n");
      out.write("                        });\n");
      out.write("\n");
      out.write("                // And map it to the format highcharts uses\n");
      out.write("                return $.map(counts, function(val, key) {\n");
      out.write("                    return {\n");
      out.write("                        name: key,\n");
      out.write("                        y: val,\n");
      out.write("                    };\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("        </script>   \n");
      out.write("      \n");
      out.write("\n");
      out.write(" \n");
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
