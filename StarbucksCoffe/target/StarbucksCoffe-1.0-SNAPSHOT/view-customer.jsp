<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Starbuck Coffe</title>
</head>

<body>
<div>

                <c:forEach var="tempProduct" items="${PRODUCT_LIST}">
                    <div>
                        <br>
                            <h2><td> ${tempProduct.category} </td></h2></br>
                            <h3><td> ${tempProduct.productName} </td></h3></br>
                            <td> ${tempProduct.information} </td><br>
                            <td> ${tempProduct.ice} </td><br>
                            <td> ${tempProduct.topping} </td><br>
                            <td> ${tempProduct.qty} </td><br>
                        </tr>
                    </div>
                    <c:url var="addtocart" value="CartController">
                        <c:param name="command" value="ADD"/>
                        <c:param name="id" value="${tempProduct.id}"/>
                    </c:url>
                    <a href="${addtocart}">Add to Cart</a>
                </c:forEach>

            </div>
</body>
</html>
