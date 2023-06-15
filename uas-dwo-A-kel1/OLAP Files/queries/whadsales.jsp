<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dwadsales?user=root&password=" catalogUri="/WEB-INF/queries/dwadsales1.xml">

select {[Measures].[Order Qty],[Measures].[Unit Price],[Measures].[Line Total]} ON COLUMNS,
  {([Time].[All Times],[Product].[All Products],[Territory].[All Territories],[OrderAddress].[All Address],[ShipMethod].[All Methods])} ON ROWS
from [Sales]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query WHADSALES using Mondrian OLAP</c:set>