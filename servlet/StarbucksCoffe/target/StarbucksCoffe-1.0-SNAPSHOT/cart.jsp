<%--
  Created by IntelliJ IDEA.
  User: Thuan
  Date: 6/5/2021
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<c:set var="Cart" value="${sessionScope.Cart}" />--%>
<%--<c:forEach var="tempCart" items="${Cart}">--%>
<%--    <div>--%>
<%--        <br>--%>
<%--        <h2><td> ${tempCart.product.category} </td></h2></br>--%>
<%--        <h3><td> ${tempCart.product.productName} </td></h3></br>--%>
<%--        <td> ${tempCart.product.information} </td><br>--%>
<%--        <td> ${tempCart.product.ice} </td><br>--%>
<%--        <td> ${tempCart.product.topping} </td><br>--%>
<%--        <td> ${tempCart.product.qty} </td><br>--%>
<%--        <td> ${tempCart.quantity} </td><br>--%>
<%--        </tr>--%>
<%--    </div>--%>
<%--</c:forEach>--%>
<%--<a href="view-customer.jsp">back to menu</a>--%>
<c:forEach var="tempProduct" items="${Cart}">
    <div>
    <br>
    <h2><td> ${tempProduct.product.category} </td></h2></br>
    <h3><td> ${tempProduct.product.productName} </td></h3></br>
    <td> ${tempProduct.product.information} </td><br>
    <td> ${tempProduct.product.ice} </td><br>
    <td> ${tempProduct.product.topping} </td><br>
    <td> ${tempProduct.product.qty} </td><br>
    <td> ${tempCart.quantity} </td><br>
    </tr>
    </div>
</c:forEach>
</body>
</html>
