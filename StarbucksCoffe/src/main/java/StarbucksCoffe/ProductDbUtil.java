package StarbucksCoffe;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDbUtil {
    private DataSource dataSource;

    public ProductDbUtil(DataSource theDataSource) {
        dataSource = theDataSource;
    }

    public List<Product> getProduct() throws Exception {

        List<Product> products = new ArrayList<>();

        Connection myConn = null;
        Statement myStmt = null;
        ResultSet myRs = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "select * from product order by id";

            myStmt = myConn.createStatement();

            myRs = myStmt.executeQuery(sql);

            while (myRs.next()) {

                int id = myRs.getInt("id");
                String category = myRs.getString("category");
                String productName = myRs.getString("productName");
                String information = myRs.getString("information");
                String ice = myRs.getString("ice");
                String topping = myRs.getString("topping");
                int qty = myRs.getInt("qty");

                Product tempStarbuck = new Product(id, category, productName, information, ice, topping, qty);

                products.add(tempStarbuck);
            }

            return products;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

        try {
            if (myRs != null) {
                myRs.close();
            }

            if (myStmt != null) {
                myStmt.close();
            }

            if (myConn != null) {
                myConn.close();
            }
        }
        catch (Exception exc) {
            exc.printStackTrace();
        }
    }

    public void addProduct(Product theProduct) throws Exception {

        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "insert into product "
                    + "(category, productName, information, ice, topping, qty) "
                    + "values (?, ?, ?, ?, ?, ?)";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, theProduct.getCategory());
            myStmt.setString(2, theProduct.getProductName());
            myStmt.setString(3, theProduct.getInformation());
            myStmt.setString(4, theProduct.getIce());
            myStmt.setString(5, theProduct.getTopping());
            myStmt.setInt(6, theProduct.getQty());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public Product getProduct(String theProductId) throws Exception {

        Product theProduct = null;

        Connection myConn = null;
        PreparedStatement myStmt = null;
        ResultSet myRs = null;
        int id;

        try {
            id = Integer.parseInt(theProductId);

            myConn = dataSource.getConnection();

            String sql = "select * from product where id=?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, id);

            myRs = myStmt.executeQuery();

            if (myRs.next()) {
                String category = myRs.getString("category");
                String productName = myRs.getString("productName");
                String information = myRs.getString("information");
                String ice = myRs.getString("ice");
                String topping = myRs.getString("topping");
                int qty = myRs.getInt("qty");

                theProduct = new Product(id, category, productName, information, ice, topping, qty);
            }
            else {
                throw new Exception("Could not find product id: " + id);
            }

            return theProduct;
        }
        finally {
            close(myConn, myStmt, myRs);
        }
    }

    public void updateProduct(Product theProduct) throws Exception {

        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            myConn = dataSource.getConnection();

            String sql = "update product "
                    + "set category=?, productName=?, information=?, ice=?, topping=?, qty=? "
                    + "where id=?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setString(1, theProduct.getCategory());
            myStmt.setString(2, theProduct.getProductName());
            myStmt.setString(3, theProduct.getInformation());
            myStmt.setString(4, theProduct.getIce());
            myStmt.setString(5, theProduct.getTopping());
            myStmt.setInt(6, theProduct.getQty());
            myStmt.setInt(7, theProduct.getId());

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }

    public void deleteProdcut(String theProdcutId) throws Exception {

        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            int id = Integer.parseInt(theProdcutId);

            myConn = dataSource.getConnection();

            String sql = "delete from product where id=?";

            myStmt = myConn.prepareStatement(sql);

            myStmt.setInt(1, id);

            myStmt.execute();
        }
        finally {
            close(myConn, myStmt, null);
        }
    }
}
