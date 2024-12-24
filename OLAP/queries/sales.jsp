<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dw_sales?user=root&password" 
    catalogUri="/WEB-INF/queries/sales.xml">

select {[Measures].[SalesAmount],[Measures].[Quantity]} ON COLUMNS,
  {([Time],[Customer],[Employee],[Product],[Territory])} ON ROWS

from [Sales]


</jp:mondrianQuery>



<c:set var="title01" scope="session">Query SALES using Mondrian OLAP</c:set>