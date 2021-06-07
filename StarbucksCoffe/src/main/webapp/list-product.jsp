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
    <link href="styles/main.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="container">



<%--            <tr>--%>
<%--                <th></th>--%>
<%--                <th>Last Name</th>--%>
<%--                <th>Email</th>--%>
<%--                <th>Action</th>--%>
<%--            </tr>--%>


                <div id="wrapper">
                    <h1>Product-List</h1>

                    <table id="keywords" cellspacing="0" cellpadding="0">
                        <thead>
                        <tr>
                            <th><span>Category</span></th>
                            <th><span>Name</span></th>
                            <th><span>Informartion</span></th>
                            <th><span>Ice</span></th>
                            <th><span>Topping</span></th>
                            <th><span>Qty</span></th>
                            <th><span>Update</span></th>
                            <th><span>Delete</span></th>
                            <th><span>Add</span></th>

                        </tr>

                        </thead>
                        <c:forEach var="tempProduct" items="${PRODUCT_LIST}">

                        <c:url var="tempLink" value="ProductControllerServlet">
                            <c:param name="command" value="LOAD"/>
                            <c:param name="id" value="${tempProduct.id}"/>
                        </c:url>

                        <c:url var="deleteLink" value="ProductControllerServlet">
                            <c:param name="command" value="DELETE"/>
                            <c:param name="id" value="${tempProduct.id}"/>
                        </c:url>
                        <tbody>
                        <tr>
                            <td class="lalign">${tempProduct.category}</td>
                            <td>${tempProduct.productName}</td>
                            <td>${tempProduct.information}</td>
                            <td>${tempProduct.ice}</td>
                            <td>${tempProduct.topping}</td>
                            <td>${tempProduct.qty}</td>
                            <td><a href="${tempLink}">Update</a></td>
                            <td><a href="${deleteLink}"
                                   onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false">
                                Delete</a></td>

                        </tr>

                        </tbody>
                        </c:forEach>

                    </table>
                </div>
                <div id="content">
                    <input type="button" value="Add Product"
                           onclick="window.location.href='add-product-form.jsp'; return false;"
                           class="add-student-button"
                    />
                <div>


<%--                <tr>--%>
<%--                    <h2><td> ${tempProduct.category} </td></h2></br>--%>
<%--                    <h3><td> ${tempProduct.productName} </td></h3></br>--%>
<%--                    <td> ${tempProduct.information} </td><br>--%>
<%--                    <td> ${tempProduct.ice} </td><br>--%>
<%--                    <td> ${tempProduct.topping} </td><br>--%>
<%--                    <td> ${tempProduct.qty} </td><br>--%>
<%--                    <td>--%>
<%--                        <a href="${tempLink}">Update</a>--%>

<%--                        <a href="${deleteLink}"--%>
<%--                           onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false">--%>
<%--                            Delete</a>--%>
<%--                    </td>--%>
<%--                    <td>-------</td><br>--%>
<%--                </tr>--%>
<%--                <hr>--%>



        </div>

    </div>

</div>
</body>
</html>
