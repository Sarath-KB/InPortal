<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title></title>
    </head>
    <style>
        ::-webkit-scrollbar{
            background: transparent;
        }
    </style>
    <body>
           <jsp:include page="AdminNavBar.jsp" /> 
        <iframe src="Report3.jsp" style="border: none;width: 100%;height: 700px;position: relative;left:1em;top:6em;"></iframe>
        <br>
        <br>
         <br>
        <br>
        <br>
        <br>
           <jsp:include page="AdminSideBar.jsp" /> 
        <jsp:include page="AdminFooter.jsp" /> 
    </body>
</html>