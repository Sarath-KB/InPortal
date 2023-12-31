<%-- 
    Document   : InternshipApproval
    Created on : Aug 23, 2022, 2:11:12 PM
    Author     : Georgekutty
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inportal::Internship Approval</title>
        <style>
            body{
                background:#f5f5f5;
                margin-top:20px;
            }
            .card {
                border: none;
                -webkit-box-shadow: 1px 0 20px rgba(96,93,175,.05);
                box-shadow: 1px 0 20px rgba(96,93,175,.05);
                margin-bottom: 30px;
            }
            .table th {
                font-weight: 500;
                color: #827fc0;
            }
            .table thead {
                background-color: #f3f2f7;
            }
            .table>tbody>tr>td, .table>tfoot>tr>td, .table>thead>tr>td {
                padding: 14px 12px;
                vertical-align: middle;
            }
            .table tr td {
                color: #8887a9;
            }
            .thumb-sm {
                height: 32px;
                width: 32px;
            }
            .badge-soft-warning {
                background-color: rgba(248,201,85,.2);
                color: #f8c955;
            }

            .badge {
                font-weight: 500;
            }
            .badge-soft-primary {
                background-color: rgba(96,93,175,.2);
                color: #605daf;
            }
        </style>
    </head>
    <body>
        <%

            if (request.getParameter("aid") != null) {
                String up = "update tbl_request  set request_status ='1',request_reply='Verified' where request_id='" + request.getParameter("aid") + "'";
                boolean status = con.executeCommand(up);

                if (status == true) {
                    DB.mailconnection m = new DB.mailconnection();
                    String mailid[] = {request.getParameter("semail")};
                    // String mailid[] ={"clgeorgekutty7@gmail.com"};
                    String name = request.getParameter("sname");
                    String cname = request.getParameter("cname");
                    String iname = request.getParameter("iname");
                    String subject = "Approved for Internship";

                    String text = "Respected " + name + "  \r\n \r\n"
                            + " Greetings from " + cname + " \r\n"
                            + " Happy to connect with you. Hope you and your family members are doing well. \r\n"
                            + " This is to inform you that you are qualified for " + iname + " internship at " + cname + ". \r\n"
                            + " We established InPortal in order to help students and firms to connect together. \r\n"
                            + " If you have any questions,and if there is anything we can improve please reply to this email. \r\n"
                            + " we are looking forward to welcoming you. \r\n \r\n"
                            + " Team " + cname + ".";
                    boolean b = m.sendMail(mailid, subject, text);

                    response.sendRedirect("InternshipApproval.jsp");
                }
            } else if (request.getParameter("reid") != null) {
                String up1 = "update tbl_request  set request_status ='2',request_reply='Rejected' where request_id='" + request.getParameter("reid") + "'";
                boolean status1 = con.executeCommand(up1);

                if (status1 == true) {
                    DB.mailconnection m = new DB.mailconnection();
                    String mailid[] = {request.getParameter("semail")};
                    // String mailid[] ={"clgeorgekutty7@gmail.com"};
                    String name = request.getParameter("sname");
                    String cname = request.getParameter("cname");
                    String iname = request.getParameter("iname");
                    String subject = "Reject for Internship";

                    String text = "Respected " + name + "  \r\n \r\n"
                            + " Greetings from " + cname + " \r\n"
                            + " This is to inform you that you are disqualified for " + iname + " internship at " + cname + ". \r\n"
                            + " The amount you have payed will be refunded in 3-4 working days. \r\n"
                            + " If you have any questions,and if there is anything we can improve please reply to this email. \r\n"
                            + " Team " + cname + ".";

                    boolean b = m.sendMail(mailid, subject, text);
                    System.out.println(b);

                    response.sendRedirect("InternshipApproval.jsp");
                }
            }
        %>
        <jsp:include page="CompanyHomeHeader.jsp" />
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="header-title pb-3 mt-0">Internship Requests</h5>
                            <div class="table-responsive">
                                <table class="table table-hover mb-0">
                                    <thead>
                                        <tr class="align-self-center">
                                            <th>Student Name</th>
                                            <th>position Name</th>
                                            <th>Title</th>
                                            <th>Request Date</th>
                                            <th>Status</th>

                                        </tr>
                                    </thead>
                                    <%
                                        String sview = "select * from tbl_request r inner join tbl_student s on r.student_id=s.student_id inner join tbl_intership i on i.internship_id=r.internship_id inner join tbl_company co on co.company_id=i.company_id  inner join tbl_position pos on i.position_id=pos.position_id where co.company_id='" + session.getAttribute("company_id") + "' and request_status='0'";

                                        ResultSet rs1 = con.selectCommand(sview);


                                    %>
                                    <tbody>
                                        <%                                       while (rs1.next()) {

                                        %> 
                                        <tr>
                                            <td><%=rs1.getString("student_name")%></td>
                                            <td> <%=rs1.getString("position_name")%></td>
                                            <td><%=rs1.getString("title")%></td>
                                            <%
                                                Date date = rs1.getDate("from_date");
                                                DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
                                                String strDate = dateFormat.format(date);
                                            %>
                                            <td><%=strDate%></td>

                                            <td>
                                                <a href="InternshipApproval.jsp?did=<%=rs1.getString("internship_id")%> &aid=<%=rs1.getString("request_id")%> &semail=<%=rs1.getString("student_email")%> &sname=<%=rs1.getString("student_name")%> &cname=<%=rs1.getString("company_name")%> &iname=<%=rs1.getString("position_name")%>">
                                                    <button type="submit" class="badge badge-boxed badge-success" style="border-style: none;">  Approve</button>
                                                </a>
                                                <a href="InternshipApproval.jsp?rid=<%=rs1.getString("internship_id")%> &reid=<%=rs1.getString("request_id")%> &semail=<%=rs1.getString("student_email")%> &sname=<%=rs1.getString("student_name")%> &cname=<%=rs1.getString("company_name")%> &iname=<%=rs1.getString("position_name")%>">
                                                    <button type="submit" class="badge badge-boxed badge-danger" style="border-style: none;">  Reject</button>
                                                </a>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                            <!--end table-responsive-->
                            <div class="pt-3 border-top text-right"><a href="#" class="text-primary">View all <i class="mdi mdi-arrow-right"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="CompanyHomeFooter.jsp" />   
    </body>

</html>
