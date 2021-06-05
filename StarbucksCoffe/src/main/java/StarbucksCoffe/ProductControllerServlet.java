package StarbucksCoffe;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductControllerServlet", value = "/ProductControllerServlet")
public class ProductControllerServlet extends HttpServlet {
    private ProductDbUtil productDbUtil;
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        Context initContext = null;
        try {
            initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            dataSource = (DataSource) envContext.lookup("jdbc/asm");
        } catch (NamingException e) {
            e.printStackTrace();
        }

        try {
            productDbUtil = new ProductDbUtil(dataSource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String theCommand = request.getParameter("command");
            if (theCommand == null) {
                theCommand = "LIST";
            }
            switch (theCommand) {
                case "LIST":
                    listProduct(request, response);
                    break;
                case "ADD":
                    addProduct(request, response);
                    break;
                case "LOAD":
                    loadProduct(request, response);
                    break;
                case "UPDATE":
                    updateProduct(request, response);
                    break;
                case "DELETE":
                    deleteProduct(request, response);
                    break;
                default:
                    listProduct(request, response);
            }

        } catch (Exception exc) {
            throw new ServletException(exc);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String theProductId = request.getParameter("id");

        productDbUtil.deleteProdcut(theProductId);

        listProduct(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        int id = Integer.parseInt(request.getParameter("id"));
        String category = request.getParameter("category");
        String productName = request.getParameter("productName");
        String information = request.getParameter("information");
        String ice = request.getParameter("ice");
        String topping = request.getParameter("topping");
        int qty = Integer.parseInt(request.getParameter("qty"));

        Product theProduct = new Product(id, category, productName, information, ice, topping, qty);

        productDbUtil.updateProduct(theProduct);

        listProduct(request, response);

    }

    private void loadProduct(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        String theProductId = request.getParameter("id");

        Product theProduct = productDbUtil.getProduct(theProductId);

        request.setAttribute("THE_PRODUCT", theProduct);

        RequestDispatcher dispatcher =
                request.getRequestDispatcher("/update-product-form.jsp");
        dispatcher.forward(request, response);
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String category = request.getParameter("category");
        String productName = request.getParameter("productName");
        String information = request.getParameter("information");
        String ice = request.getParameter("ice");
        String topping = request.getParameter("topping");
        int qty = Integer.parseInt(request.getParameter("qty"));

        Product theProduct = new Product(category, productName, information, ice, topping, qty);

        productDbUtil.addProduct(theProduct);

        listProduct(request, response);
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        List<Product> products = productDbUtil.getProduct();

        request.setAttribute("PRODUCT_LIST", products);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/list-product.jsp");
        dispatcher.forward(request, response);
    }
}
