package entity;

public class Product {
	private String name;
	private String imageUrl;
	private double price;
	private double discount;
	private String sale;

	public Product(String name, String imageUrl, double price, double discount, String sale) {
		this.name = name;
		this.imageUrl = imageUrl;
		this.price = price;
		this.discount = discount;
		this.sale = sale;
	}

	public Product(String name, String imageUrl, double discount) {
		this.name = name;
		this.imageUrl = imageUrl;
		this.discount = discount;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public String getSale() {
		return sale;
	}

	public void setSale(String sale) {
		this.sale = sale;
	}

	@Override
	public String toString() {
		return "Product [name=" + name + ", imageUrl=" + imageUrl + ", price=" + price + ", discount=" + discount
				+ ", sale=" + sale + "]";
	}
}
