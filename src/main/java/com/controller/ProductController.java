package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Product;
import com.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService ps;

	@RequestMapping(value = "addProduct", method = RequestMethod.POST)
	public ModelAndView addProduct(HttpServletRequest req, Product p) {

		String p_name = req.getParameter("p_name");
		Float price = Float.parseFloat(req.getParameter("price"));
		String url = req.getParameter("url");
		String category = req.getParameter("category");
		int qty = Integer.parseInt(req.getParameter("quantity"));

		p.setP_name(p_name);
		p.setPrice(price);
		p.setUrl(url);
		p.setCategory(category);
		p.setQty(qty);

		String result = ps.storeProduct(p);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("addProduct.jsp");
		mav.addObject("msg", result);

		return mav;
	}

	@RequestMapping(value = "getProducts", method = RequestMethod.GET)
	public ModelAndView getProducts(HttpServletRequest req, Product p) {
		List<Product> list_prod = ps.findAllProducts();

		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewProducts.jsp");
		mav.addObject("list", list_prod);

		return mav;
	}
	@RequestMapping(value = "getProductsAdmin", method = RequestMethod.GET)
	public ModelAndView getProductsAmin(HttpServletRequest req, Product p) {
		List<Product> list_prod = ps.findAllProducts();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewProductsAdmin.jsp");
		mav.addObject("list", list_prod);
		
		return mav;
	}

	@RequestMapping(value = "buyProduct", method = RequestMethod.GET)
	public ModelAndView buyProduct(HttpServletRequest req, Product p) {
		int pro_id = Integer.parseInt(req.getParameter("pid"));

		p = ps.getProductById(pro_id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("orderProduct.jsp");
		mav.addObject("product", p);

		return mav;
	}
	@RequestMapping(value = "updateProduct", method = RequestMethod.POST)
	public ModelAndView updateProduct(HttpServletRequest req, Product p) {
		int pro_id = Integer.parseInt(req.getParameter("p_id"));
		Float price = Float.parseFloat(req.getParameter("price"));
		
		p.setP_id(pro_id);
		p.setPrice(price);
		
		String result = ps.updateProduct(p);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("updateProduct.jsp");
		mav.addObject("msg", result);
		
		
		return mav;
	}
	
	@RequestMapping(value = "findByCategory", method = RequestMethod.GET)
	public ModelAndView updateProduct(HttpServletRequest req) {
		String category = req.getParameter("category");
		
		
		
		List<Product>products = ps.getProductsByCategory(category);
		System.out.println(products.size());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("viewByCategory.jsp");
		mav.addObject("products", products);
		
		
		return mav;
	}

}
