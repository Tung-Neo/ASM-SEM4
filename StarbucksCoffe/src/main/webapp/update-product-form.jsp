<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Starbuck Coffe</title>
</head>
<body>
<div id="container">
    <h3>Update Product</h3>

    <form action="ProductControllerServlet" method="GET">

        <input type="hidden" name="command" value="UPDATE" />

        <input type="hidden" name="id" value="${THE_PRODUCT.id}" />

        <table>
            <tbody>
            <tr>
                <td><label>Category:</label></td>
                <td><input type="text" name="category"
                           value="${THE_PRODUCT.category}" /></td>
            </tr>

            <tr>
                <td><label>Product Name:</label></td>
                <td><input type="text" name="productName"
                           value="${THE_PRODUCT.productName}" /></td>
            </tr>

            <tr>
                <td><label>Informartion:</label></td>
                <td><input type="text" name="information"
                           value="${THE_PRODUCT.information}" /></td>
            </tr>

            <tr>
                <td><label>Ice:</label></td>
                <td><input type="text" name="ice"
                           value="${THE_PRODUCT.ice}" /></td>
            </tr>

            <tr>
                <td><label>Topping:</label></td>
                <td><input type="text" name="topping"
                           value="${THE_PRODUCT.topping}" /></td>
            </tr>

            <tr>
                <td><label>Qty:</label></td>
                <td><input type="text" name="qty"
                           value="${THE_PRODUCT.qty}" /></td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save" /></td>
            </tr>

            </tbody>
        </table>
    </form>

    <div style="clear: both;"></div>

    <p>
        <a href="ProductControllerServlet">Back to List</a>
    </p>
</div>
</body>
</html>
