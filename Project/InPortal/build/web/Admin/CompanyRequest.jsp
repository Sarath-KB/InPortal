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
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
            <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
            <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css'>
            <link rel='stylesheet' href='https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css'>
            <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
            <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

        </head>
        <body>

            <div class="container">

                <br>
                <br>
                <br>
                <br>
                <br>
                <div class="container">
                    <br>
                    <table class="table table-striped table-bordered" style="width:100%" id="example">

                        <thead class="" >
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Company Request</th>
                                <th scope="col">Request Date</th>
                                <th scope="col">Admin Reply</th>
                                <th scope="col">Replay Date</th>
                                <th scope="col">Status</th>



                            </tr>
                        </thead>
                    <%

                        String sview;

                        sview = "select * from tbl_makerequest re inner join tbl_company co on re.company_id=co.company_id order by makerequest_id desc";

                        ResultSet rs1 = con.selectCommand(sview);
                        int i = 0;

                    %>
                    <tbody>
                        <%                            while (rs1.next()) {
                                i++;
                        %> 

                        <tr>
                            <td>
                                <%=i%>  
                            </td>

                            <td >
                                 <img src="../Assets/CompanyLogo/<%=rs1.getString("company_logo")%>" style="
                                         max-width: 46px;
                                         min-width: 46px;
                                         border-radius: 23px;">
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
                                <button class="btn btn-primary" onclick="updateData(<%=rs1.getString("makerequest_id")%>)"  data-toggle="modal" data-target="#exampleModalScrollable"><i class="fas fa-reply" >Reply</i></button>

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

                                <span class="badge badge-primary"><i class="far fa-comment-lines">Read</i></span>
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
                if (request.getParameter("yobu") != null) {
                    String sel45 = "update tbl_makerequest set admin_rply='" + request.getParameter("txt_mssge") + "',admin_rply_date=curdate(),isactive='1' where makerequest_id='" + request.getParameter("reid") + "'";

                    System.out.println(sel45);

                    if (con.executeCommand(sel45)) {
            %>
            <script>
                // alert("Request Submitted");

                window.location("CompanyRequest.jsp");
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
                <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable" role="document">
                        <div class="modal-content" style="position: relative;top: 5em;">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalScrollableTitle">Answer to the company </h5>

                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <input type="text" id="req_id" name="reid">
                            <div class="modal-body">

                                <label class="form-label">Write down your decision:</label>
                                <textarea class="form-control" rows="10" cols="50" name="txt_mssge" id="id_address" ></textarea>
                                <br>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary" name="yobu">Submit</button>
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



                function updateData(id)
                {
                    document.getElementById("req_id").value = id;
                }


                $(document).ready(function() {
                    $('#example').DataTable();
                });
        </script>







    </body>
</html>
