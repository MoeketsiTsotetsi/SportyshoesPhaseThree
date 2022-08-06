package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Repository.ProductRepository;
import com.bean.Product;

@Service
public class ProductService {

	@Autowired
	ProductRepository productRepo;
	public String storeProduct(Product p) {
		productRepo.save(p);
		return "Stored Sucessfully";
		
	}
	
	public List<Product> findAllProducts(){
		return productRepo.findAll();
	}
	
	public Product getProductById(int id) {
		Product p = null;
		 Optional<Product>result = productRepo.findById(id);
		 if(result.isPresent()) {
			 p = result.get();
		 }
		 
		 return p;
	}
	
	public String updateProduct(Product p) {
		Optional<Product> result = productRepo.findById(p.getP_id());
		
		if (result.isPresent()) {
			Product db_prod = result.get();
			db_prod.setPrice(p.getPrice());
			productRepo.saveAndFlush(db_prod);
			return "Product price updated";
		}else {
			return "product does not exist";
		}
	}
	
	public List<Product> getProductsByCategory(String category){
		return productRepo.findProductByCategory(category);
	}
	
	
}
