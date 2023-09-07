<%-- 
    Document   : StudentDetails
    Created on : Sep 29, 2022, 4:45:43 PM
    Author     : Georgekutty
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InPortal::StudentDetails</title>
        <style>
            table.dataTable thead>tr>th.sorting:before, table.dataTable thead>tr>th.sorting:after, table.dataTable thead>tr>th.sorting_asc:before, table.dataTable thead>tr>th.sorting_asc:after, table.dataTable thead>tr>th.sorting_desc:before, table.dataTable thead>tr>th.sorting_desc:after, table.dataTable thead>tr>th.sorting_asc_disabled:before, table.dataTable thead>tr>th.sorting_asc_disabled:after, table.dataTable thead>tr>th.sorting_desc_disabled:before, table.dataTable thead>tr>th.sorting_desc_disabled:after, table.dataTable thead>tr>td.sorting:before, table.dataTable thead>tr>td.sorting:after, table.dataTable thead>tr>td.sorting_asc:before, table.dataTable thead>tr>td.sorting_asc:after, table.dataTable thead>tr>td.sorting_desc:before, table.dataTable thead>tr>td.sorting_desc:after, table.dataTable thead>tr>td.sorting_asc_disabled:before, table.dataTable thead>tr>td.sorting_asc_disabled:after, table.dataTable thead>tr>td.sorting_desc_disabled:before, table.dataTable thead>tr>td.sorting_desc_disabled:after {

                opacity: .525 !important;

            }

        </style> 
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css'>

    </head>
    <body>
        <jsp:include page="CompanyHomeHeader.jsp" />
        <div class="container">
            <br>
            <table class="table table-striped " style="width:100%" id="example">

                <thead class="" >
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Student Name</th>
                        <th scope="col">Internship Name</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Internship Status</th>
                        <th scope="col">Payment Status</th>



                    </tr>
                </thead>
                <%

                    String sview;

                    sview = "select * from tbl_intership i inner join tbl_request re on i.internship_id=re.internship_id inner join tbl_student st on st.student_id=re.student_id inner join tbl_company co on i.company_id=co.company_id where co.company_id='"+session.getAttribute("company_id")+"'";

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

                        <td>
                            <%=rs1.getString("student_name")%>
                        </td>

                        <td>
                            <%=rs1.getString("title")%>
                        </td>
                        <td>
                            <%=rs1.getString("student_contact")%>
                        </td>
                        <!-- Intenship status-->
                        <%
                            if (rs1.getString("request_active").equals("1")) {
                        %>
                        <td>
                            <span class="badge bg-success"><i class="far fa-check-circle"> Completed</i></span>
                        </td>
                        <%
                        } else {
                        %>
                        <td>
                            <span class="badge bg-secondary"><i class="fas fa-hourglass-start"> In progress</i></span>
                        </td>
                        <%
                            }
                        %>
                        <!-- Payment status-->
                        <%
                            if (rs1.getString("payment_status").equals("1")) {
                        %>
                        <td>
                            <span class="badge bg-success"><i class="far fa-check-circle"> Payed</i></span>
                        </td>
                        <%
                        } else {
                        %>
                        <td>
                            <span class="badge bg-secondary"><i class="fas fa-times-circle"> Not Payed</i></span>
                        </td>
                        <%
                            }
                        %>
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
        <jsp:include page="CompanyHomeFooter.jsp" />   
    </body>
</html>
