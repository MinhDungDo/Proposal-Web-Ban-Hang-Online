package Product.com;

import java.util.Date;

/**
 * Created by KUBO0212 on 6/7/2016.
 */
public class Product {
    private String nameitem;
    private Integer iditem;
    private String idcat;
    private Integer price;
    private Integer quantity;
    private Date date;
    private Integer view;
    private String url;
    private String url2;
    private String url3;
    private String info;
    private String movement;
    private String water;
    private String _case;
    private String strap;
    private String material;
    private String type;
    private String gender;
    private String warranty;
    private String country;
    private Integer status;

    public Product(String nameitem, Integer iditem, String idcat, Integer price, Integer quantity, Date date, Integer view, String url, String url2, String url3, String info, String movement, String water, String _case, String strap, String material, String type, String gender, String warranty, String country, Integer status) {
        this.nameitem = nameitem;
        this.iditem = iditem;
        this.idcat = idcat;
        this.price = price;
        this.quantity = quantity;
        this.date = date;
        this.view = view;
        this.url = url;
        this.url2 = url2;
        this.url3 = url3;
        this.info = info;
        this.movement = movement;
        this.water = water;
        this._case = _case;
        this.strap = strap;
        this.material = material;
        this.type = type;
        this.gender = gender;
        this.warranty = warranty;
        this.country = country;
        this.status = status;
    }

    public Product() {
    }

    public String getNameitem() {
        return nameitem;
    }

    public void setNameitem(String nameitem) {
        this.nameitem = nameitem;
    }

    public Integer getIditem() {
        return iditem;
    }

    public void setIditem(Integer iditem) {
        this.iditem = iditem;
    }

    public String getIdcat() {
        return idcat;
    }

    public void setIdcat(String idcat) {
        this.idcat = idcat;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getView() {
        return view;
    }

    public void setView(Integer view) {
        this.view = view;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrl2() {
        return url2;
    }

    public void setUrl2(String url2) {
        this.url2 = url2;
    }

    public String getUrl3() {
        return url3;
    }

    public void setUrl3(String url3) {
        this.url3 = url3;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getMovement() {
        return movement;
    }

    public void setMovement(String movement) {
        this.movement = movement;
    }

    public String getWater() {
        return water;
    }

    public void setWater(String water) {
        this.water = water;
    }

    public String get_case() {
        return _case;
    }

    public void set_case(String _case) {
        this._case = _case;
    }

    public String getStrap() {
        return strap;
    }

    public void setStrap(String strap) {
        this.strap = strap;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getWarranty() {
        return warranty;
    }

    public void setWarranty(String warranty) {
        this.warranty = warranty;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
