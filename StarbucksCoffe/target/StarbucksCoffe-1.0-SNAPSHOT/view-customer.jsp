<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Starbuck Coffe</title>
</head>
<sql:query var="rs" dataSource="jdbc/asm">
    select * from product
</sql:query>
<body>
<div>

                <c:forEach var="tempStudent" items="${STUDENT_LIST}">
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

                </c:forEach>

            </div>
</body>
</html>
