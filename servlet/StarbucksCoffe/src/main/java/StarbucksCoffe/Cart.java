package StarbucksCoffe;

import java.util.List;

public class Cart {
    private int cartID;
    private Product product;
    private int quantity;

    public Cart(int cartID, Product product, int quantity){
        this.cartID = cartID;
        this.product = product;
        this.quantity = quantity;
    }

    public Cart(Product product, int quantity){
        this.product = product;
        this.quantity = quantity;
    }

    public int getCartID() {
        return cartID;
    }

    public int getQuantity() {
        return quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
