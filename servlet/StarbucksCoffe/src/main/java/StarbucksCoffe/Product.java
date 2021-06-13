package StarbucksCoffe;

public class Product {
    private int id;
    private String category;
    private String productName;
    private String information;
    private String ice;
    private String topping;
    private int qty;

    public Product(int id, String category, String productName, String information, String ice, String topping, int qty) {
        this.id = id;
        this.category = category;
        this.productName = productName;
        this.information = information;
        this.ice = ice;
        this.topping = topping;
        this.qty = qty;
    }

    public Product(String category, String productName, String information, String ice, String topping, int qty) {
        this.category = category;
        this.productName = productName;
        this.information = information;
        this.ice = ice;
        this.topping = topping;
        this.qty = qty;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public String getIce() {
        return ice;
    }

    public void setIce(String ice) {
        this.ice = ice;
    }

    public String getTopping() {
        return topping;
    }

    public void setTopping(String topping) {
        this.topping = topping;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

}
