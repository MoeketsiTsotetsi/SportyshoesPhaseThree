package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Repository.OrderRepository;
import com.Repository.ProductRepository;
import com.bean.Order;
import com.bean.Product;

@Service
public class OrderService {
	@Autowired
	ProductRepository prodRepo;
	@Autowired
	OrderRepository orderRepo;

	public String storeOrder(Order o) {
		Optional<Product> result = prodRepo.findById(o.getPro_id());

		if (result.isPresent()) {
			Product db_prod = result.get();

			if (db_prod.getQty() >= o.getQuantity()) {
				int items_left = db_prod.getQty() - o.getQuantity();
				db_prod.setQty(items_left);

				List<Order> orders = db_prod.getOrders();
				orders.add(o);
				db_prod.setOrders(orders);
				prodRepo.saveAndFlush(db_prod);
				return "Order saved";
			} else {
				return "Only " + db_prod.getQty() + " items  left";
			}

		} else {
			return "Order not saved";
		}

	}
	
	public List<Order> getAllOrders(){
		return orderRepo.findAll();
	}
	
	public List<Order>getUserOrders(String email){
		return orderRepo.findOrdersByEmail(email);
	}

}
