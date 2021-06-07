<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 6/5/2021
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Starbuck Coffe</title>
</head>
<body>
<div id="container">

    <div id="content">
        <input type="button" value="Add Product"
               onclick="window.location.href='add-product-form.jsp'; return false;"
               class="add-student-button"
        />

        <div>

<%--            <tr>--%>
<%--                <th></th>--%>
<%--                <th>Last Name</th>--%>
<%--                <th>Email</th>--%>
<%--                <th>Action</th>--%>
<%--            </tr>--%>

            <c:forEach var="tempProduct" items="${PRODUCT_LIST}">

                <c:url var="tempLink" value="ProductControllerServlet">
                    <c:param name="command" value="LOAD"/>
                    <c:param name="id" value="${tempProduct.id}"/>
                </c:url>

                <c:url var="deleteLink" value="ProductControllerServlet">
                    <c:param name="command" value="DELETE"/>
                    <c:param name="id" value="${tempProduct.id}"/>
                </c:url>

                <tr>
                    <h2><td> ${tempProduct.category} </td></h2></br>
                    <h3><td> ${tempProduct.productName} </td></h3></br>
                    <td> ${tempProduct.information} </td><br>
                    <td> ${tempProduct.ice} </td><br>
                    <td> ${tempProduct.topping} </td><br>
                    <td> ${tempProduct.qty} </td><br>
                    <td>
                        <a href="${tempLink}">Update</a>

                        <a href="${deleteLink}"
                           onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false">
                            Delete</a>
                    </td>
                    <td>-------</td><br>
                </tr>

            </c:forEach>

        </div>

    </div>

</div>
</body>
</html>
