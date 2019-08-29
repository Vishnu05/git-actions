package Vishnu.Dao;

import java.util.List;

import Vishnu.Model.Product;

public interface ProductDAO {

	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(Product product);
	public Product getProduct(int productId);
	public List<Product> retrieveProduct();
	
	public Product getProductbyName(String Name);
	public Product setData(int productId,String productName,String productDesc,float price,float quantity);
 

	
}
