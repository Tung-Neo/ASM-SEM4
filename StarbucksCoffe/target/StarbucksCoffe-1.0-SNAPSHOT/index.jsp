<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/asm">
    select * from product
</sql:query>
<!DOCTYPE html>
<html>
<head>
    <title>Starbuck Coffe</title>
    <link type="text/css" rel="stylesheet" href="css/add-product-style.css">
</head>
<body>
<%--<div id="container">--%>

<%--    <div id="content">--%>

<%--        <div>--%>

<%--            <c:forEach var="tempStudent" items="${STUDENT_LIST}">--%>
<%--                <div>--%>
<%--                    <br>--%>
<%--                        <h2><td> ${tempProduct.category} </td></h2></br>--%>
<%--                        <h3><td> ${tempProduct.productName} </td></h3></br>--%>
<%--                        <td> ${tempProduct.information} </td><br>--%>
<%--                        <td> ${tempProduct.ice} </td><br>--%>
<%--                        <td> ${tempProduct.topping} </td><br>--%>
<%--                        <td> ${tempProduct.qty} </td><br>--%>
<%--                    </tr>--%>
<%--                </div>--%>

<%--            </c:forEach>--%>

<%--        </div>--%>

<%--    </div>--%>

<%--</div>--%>

<a href="ProductControllerServlet">Product CRUD</a>
<a href="view-customer.jsp">View Cusrtomer</a>
</body>
</html>