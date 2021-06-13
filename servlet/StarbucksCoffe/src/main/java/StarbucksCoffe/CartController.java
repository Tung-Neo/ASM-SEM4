package StarbucksCoffe;

import com.mysql.cj.Session;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Cart",value = "/CartController")
public class CartController extends HttpServlet {
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
//                    loadProduct(request, response);
                    break;
                case "UPDATE":
//                    updateProduct(request, response);
                    break;
                case "DELETE":
//                    deleteProduct(request, response);
                    break;
                default:
                    listProduct(request, response);
            }

        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {

        HttpSession session = request.getSession();
        List<Cart> Cart = (List<Cart>) session.getAttribute("Cart");
//        List<Product> products = productDbUtil.getProduct();

        request.setAttribute("Cart", Cart);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/cart.jsp");
        dispatcher.forward(request, response);
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {

        int quantity = 1;
        String id = request.getParameter("id");
        Product products = productDbUtil.getProduct(id);
        HttpSession session = request.getSession();
        List<Cart> Cart = (List<Cart>) session.getAttribute("Cart");
        if (Cart == null){
            Cart = new ArrayList<>();
            Cart.add(new Cart(products,quantity));
            session.setAttribute("Cart",Cart);
        } else {
            Cart listCart = (Cart) session.getAttribute("Cart");
            List<Product> listProduct = (List<Product>) listCart.getProduct();
            for (Product product : listProduct)
            {
                if (product.getId() == Integer.parseInt("id")){
                    listCart.setQuantity(quantity+ listCart.getQuantity());
                } else {
                    Cart = new ArrayList<>();
                    Cart.add(new Cart(products,quantity));
                }
                session.setAttribute("Cart",Cart);
            }
        }
        listProduct(request,response);
    }
}
