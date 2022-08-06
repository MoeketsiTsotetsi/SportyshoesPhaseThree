package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Order;
import com.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	OrderService orderService;

	@RequestMapping(value = "saveOrder", method = RequestMethod.POST)
	public ModelAndView saveOrder(HttpServletRequest req, Order o) {
		int qty = Integer.parseInt(req.getParameter("quantity"));
		String email = req.getParameter("email");
		Date orderDate = new Date();
	    String status = "ongoing";
		int prod_id = Integer.parseInt(req.getParameter("pid"));

		o.setDate(orderDate);
		o.setEid(email);
		o.setPro_id(prod_id);
		o.setQuantity(qty);
		o.setStatus(status);
		

		String result = orderService.storeOrder(o);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("orderProduct.jsp");
		mav.addObject("msg", result);

		return mav;
	}
	
	@RequestMapping(value = "findOrders", method = RequestMethod.GET)
	public ModelAndView findOrders(HttpServletRequest req) {
		String email = req.getParameter("email");
		
		List<Order> orders = orderService.getUserOrders(email);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewOrders.jsp");
		mav.addObject("orders", orders);
		
		return mav;
	}
	@RequestMapping(value = "viewOrders", method = RequestMethod.GET)
	public ModelAndView viewOrders() {
		
		List<Order>orders = orderService.getAllOrders();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewAllOrders.jsp");
		mav.addObject("orders", orders);
		
		return mav;
	}
}
