<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title></title>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/searchpanes/2.0.2/css/searchPanes.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.4.0/css/select.dataTables.min.css">


        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/searchpanes/2.0.2/js/dataTables.searchPanes.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/select/1.4.0/js/dataTables.select.min.js"></script>
        <script type="text/javascript" src="https://code.highcharts.com/highcharts.js"></script>
    </head>
    <body>

        <table id="example" class="display" style="width:100%">
            <thead>
                <tr>
                    <th>Sector</th>
                    <th>Company</th>
                    <th>Internship</th>
                    <th>Amount</th>
                    <th>Start date</th>
                    <th>End Date</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String selQry = "select * from tbl_intership i inner join tbl_company c on c.company_id=i.company_id inner join tbl_sector s on s.sector_id=c.sector_id";
                    ResultSet rs = con.selectCommand(selQry);
                    while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("sector_name")%></td>
                    <td><%=rs.getString("company_name")%></td>
                    <td><%=rs.getString("title")%></td>
                    <td><%=rs.getString("internship_amount")%></td>
                    <td><%=rs.getString("from_date")%></td>
                    <td><%=rs.getString("to_date")%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
            <tfoot>
                <tr>
                    <th>Sector</th>
                    <th>Company</th>
                    <th>Internship</th>
                    <th>Amount</th>
                    <th>Start date</th>
                    <th>End Date</th>
                </tr>
            </tfoot>
        </table>




        <script>
            $(document).ready(function() {
                // Create DataTable
                var table = $('#example').DataTable({
                    dom: 'Pfrtip',
                });

                // Create the chart with initial data
                var container = $('<div/>').insertBefore(table.table().container());

                var chart = Highcharts.chart(container[0], {
                    chart: {
                        type: 'pie',
                    },
                    title: {
                        text: 'Company Count Based on Sector',
                    },
                    series: [
                        {
                            data: chartData(table),
                        },
                    ],
                });

                // On each draw, update the data in the chart
                table.on('draw', function() {
                    chart.series[0].setData(chartData(table));
                });
            });

            function chartData(table) {
                var counts = {};

                // Count the number of entries for each position
                table
                        .column(1, {search: 'applied'})
                        .data()
                        .each(function(val) {
                            if (counts[val]) {
                                counts[val] += 1;
                            } else {
                                counts[val] = 1;
                            }
                        });

                // And map it to the format highcharts uses
                return $.map(counts, function(val, key) {
                    return {
                        name: key,
                        y: val,
                    };
                });
            }
        </script>


    </body>
</html>