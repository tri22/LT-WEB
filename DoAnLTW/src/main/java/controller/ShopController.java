package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Product;

@WebServlet("/ShopController")
public class ShopController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ShopController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Product> productList = new ArrayList<Product>();
		productList.add(
				new Product("Bell Pepper", "./Shop/shop-assest/img/product-image/product-1.jpg", 120.00, 80.00, "30%"));
		productList.add(new Product("Strawberry", "./Shop/shop-assest/img/product-image/product-2.jpg", 120.00));
		productList.add(new Product("Green beans", "./Shop/shop-assest/img/product-image/product-3.jpg", 120.00));
		productList.add(new Product("Pupple Cabbage", "./Shop/shop-assest/img/product-image/product-4.jpg", 120.00));
		productList
				.add(new Product("Tomato", "./Shop/shop-assest/img/product-image/product-5.jpg", 120.00, 80.00, "30%"));
		productList.add(new Product("Brocolli", "./Shop/shop-assest/img/product-image/product-6.jpg", 120.00));
		productList.add(new Product("Carrots", "./Shop/shop-assest/img/product-image/product-7.jpg", 120.00));
		productList.add(new Product("Fruit juice", "./Shop/shop-assest/img/product-image/product-8.jpg", 120.00));
		productList
				.add(new Product("Onion", "./Shop/shop-assest/img/product-image/product-9.jpg", 120.00, 80.00, "30%"));
		productList.add(new Product("Apple", "./Shop/shop-assest/img/product-image/product-10.jpg", 120.00));
		productList.add(new Product("Garlic", "./Shop/shop-assest/img/product-image/product-11.jpg", 120.00));
		productList.add(new Product("Chili", "./Shop/shop-assest/img/product-image/product-12.jpg", 120.00));

		request.setAttribute("pd", productList);
		request.getRequestDispatcher("Shop/Shop.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
