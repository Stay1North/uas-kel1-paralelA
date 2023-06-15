<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dwadpurchasing?user=root&password=" catalogUri="/WEB-INF/queries/dwadpurchasing.xml">

select {[Measures].[Stocked Qty],[Measures].[Total Due]} ON COLUMNS,
  {([Product].[All Products],[OrderDate].[All Dates],[Vendor].[All Vendors],[ShipMethod].[All Methods])} ON ROWS
from [PurchaseStock]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query WHADPURCHASE using Mondrian OLAP</c:set>
