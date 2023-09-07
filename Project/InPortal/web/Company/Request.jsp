<%-- 
    Document   : Request
    Created on : Sep 30, 2022, 4:55:27 PM
    Author     : Georgekutty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>InPortal::Make Request</title>
            <style>
                table.dataTable thead>tr>th.sorting:before, table.dataTable thead>tr>th.sorting:after, table.dataTable thead>tr>th.sorting_asc:before, table.dataTable thead>tr>th.sorting_asc:after, table.dataTable thead>tr>th.sorting_desc:before, table.dataTable thead>tr>th.sorting_desc:after, table.dataTable thead>tr>th.sorting_asc_disabled:before, table.dataTable thead>tr>th.sorting_asc_disabled:after, table.dataTable thead>tr>th.sorting_desc_disabled:before, table.dataTable thead>tr>th.sorting_desc_disabled:after, table.dataTable thead>tr>td.sorting:before, table.dataTable thead>tr>td.sorting:after, table.dataTable thead>tr>td.sorting_asc:before, table.dataTable thead>tr>td.sorting_asc:after, table.dataTable thead>tr>td.sorting_desc:before, table.dataTable thead>tr>td.sorting_desc:after, table.dataTable thead>tr>td.sorting_asc_disabled:before, table.dataTable thead>tr>td.sorting_asc_disabled:after, table.dataTable thead>tr>td.sorting_desc_disabled:before, table.dataTable thead>tr>td.sorting_desc_disabled:after {

                    opacity: .525 !important;

                }
                ::-webkit-scrollbar{
                    background: transparent;
                }

            </style> 
            <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css'>
            <link rel='stylesheet' href='https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css'>
            
        </head>
        <body>
        <jsp:include page="CompanyHomeHeader.jsp" />
        <div class="container">
            <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable2">Make Request</button>
            <br>
            <div class="container">
                <br>
                <table class="table table-striped table-bordered" style="width:100%" id="example">

                    <thead class="" >
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">My Request</th>
                            <th scope="col">Request Date</th>
                            <th scope="col">Admin Reply</th>
                            <th scope="col">Replay Date</th>
                            <th scope="col">Status</th>



                        </tr>
                    </thead>
                    <%

                        String sview;

                        sview = "select * from tbl_makerequest where company_id = '" + session.getAttribute("company_id") + "' order by makerequest_id desc";

                        ResultSet rs1 = con.selectCommand(sview);
                        int i = 0;

                    %>
                    <tbody>
                        <%                    while (rs1.next()) {
                                i++;
                        %> 

                        <tr>
                            <td>
                                <%=i%>  
                            </td>

                            <td >
                                <div style="width: 350px; max-height: 110px;overflow-y: scroll">
                                    <%=rs1.getString("company_request")%>
                                </div>
                            </td>

                            <td>
                                <%=rs1.getString("company_request_date")%>
                            </td>
                            <!--Admin Reply-->
                            <%
                                if (rs1.getString("admin_rply").equals("Nothing")) {
                            %>
                            <td>
                                <span class="badge badge-danger"><i class="fas fa-comment-slash">No Reply</i></span>
                            </td>
                            <%
                            } else {
                            %>
                            <td>
                                <%=rs1.getString("admin_rply")%>
                            </td>
                            <%
                                }
                            %>
                            <!--Admin reply ends-->

                            <td>
                                <%=rs1.getString("admin_rply_date")%>
                            </td>
                            <!--Admin Read-->
                            <%
                                if (rs1.getString("isactive").equals("0")) {
                            %>
                            <td>
                                <span class="badge badge-warning"><i class="fas fa-comment-slash">Not seen</i></span>
                            </td>
                            <%
                            } else {
                            %>
                            <td>

                                <span class="badge badge-success"><i class="far fa-comment-lines">Read</i></span>
                            </td>
                            <%
                                }
                            %>
                            <!--Admin read ends-->

                        </tr>
                        <%
                            }
                        %>


                    </tbody>
                </table>


            </div>

            <script src='https://code.jquery.com/jquery-3.5.1.js'></script>
            <script src='https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js'></script>
            <script src='https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js'></script>

            <script>
                $(document).ready(function() {
                    $('#example').DataTable();
                });
            </script>   
            <!--model pop up-->
            <%
                if (request.getParameter("buttin") != null) {
                    String sel4 = "insert into tbl_makerequest(company_id,company_request,company_request_date) values('" + session.getAttribute("company_id") + "','" + request.getParameter("txt_mssge") + "',curdate())";
                    if (con.executeCommand(sel4)) {
            %>
            <script>
//                alert("Request Submitted");

              response.sendRedirect("Request.jsp");
            </script>
            <%
            } else {
            %>
            <script>
                alert("Request submission Failed");

            </script>
            <%
                    }
                }
            %>
            <form method="post">
                <div class="modal fade" id="exampleModalScrollable2" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalScrollableTitle">Make Your Request to admin</h5>

                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p style="text-align:justify;">Notice: Send your needs to InPortal Admin. Delivered requests will be checked every working day at 17.00 to 17.30 and your queries will be replied.</p>
                                <br>
                                <label class="form-label">Write down your needs:</label>
                                <textarea class="form-control" rows="10" cols="50" name="txt_mssge" id="id_address" ></textarea>
                                <br>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" name="buttin">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </div>

        <script src='https://code.jquery.com/jquery-3.5.1.js'></script>
        <script src='https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js'></script>
        <script src='https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js'></script>

        <script>
            $(document).ready(function() {
                $('#example').DataTable();
            });
        </script>







        <jsp:include page="CompanyHomeFooter.jsp" />   
    </body>
</html>
