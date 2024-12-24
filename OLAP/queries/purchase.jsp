<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dw_purchasing?user=root&password=" 
    catalogUri="/WEB-INF/queries/purchase.xml">

select {[Measures].[Total Cost],[Measures].[Quantity]} ON COLUMNS,
  {([Time],[Vendor],[Employee],[Product],[Shipping Method],[Warehouse])} ON ROWS

from [purchase]


</jp:mondrianQuery>


<c:set var="title01" scope="session">Query PURCHASING using Mondrian OLAP</c:set>