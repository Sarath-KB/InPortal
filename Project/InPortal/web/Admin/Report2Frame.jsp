<%-- 
    Document   : Report2Frame
    Created on : Oct 3, 2022, 11:06:10 AM
    Author     : Georgekutty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>InPortal::Report 2</title>
    </head>
    <body>
         <jsp:include page="AdminNavBar.jsp" /> 
         <iframe src="Report2.jsp" style="border: none;width: 100%;height: 700px;position: relative;top:6em;"></iframe>
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
