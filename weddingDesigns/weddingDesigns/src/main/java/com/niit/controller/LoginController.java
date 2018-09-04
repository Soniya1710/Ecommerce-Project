package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Customer;

import com.niit.model.Product;
import com.niit.service.CustService;
import com.niit.service.ProductService;

import javax.validation.Valid;

@SuppressWarnings("unused")
@Controller

public class LoginController {
	ModelAndView m = new ModelAndView();
	@Autowired
	CustService cobj;
	
	@Autowired
	ProductService pobj;
	
	/*@RequestMapping(value="/CheckLogin", method = RequestMethod.POST)
	public ModelAndView checkLogin(Login login){
		
		if(cobj.checkLogin(login)){
			return new ModelAndView("index");
		}
		else{
			return new ModelAndView("login1");
		}
	}*/
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView gohome()
	{
		System.out.println("-----home Controller------");
		
		 ModelAndView m = new ModelAndView("index");	
		m.setViewName("index");
		return m;
	}
	
	
	@RequestMapping("/aboutus")
	public ModelAndView aboutus()
	{
		System.out.println("-----about Controller------");
		 ModelAndView m = new ModelAndView("aboutus");	
		m.setViewName("aboutus");
		return m;
	}
	
	@RequestMapping("/updatefile")
	public ModelAndView updatefile()
	{
		System.out.println("-----file update Controller------");
		 ModelAndView m = new ModelAndView("updatefile");	
		m.setViewName("updatefile");
		return m;
	}
	
	
	
	
	
	@RequestMapping(value="cart",method=RequestMethod.GET)
	public ModelAndView cart()
	{
		System.out.println("-----cart Controller------");
		m.setViewName("cart");
		return m;
	}
	/*@RequestMapping("/addProd")
	public ModelAndView addProdu()
	{
		System.out.println("-----about Controller------");
		 ModelAndView m = new ModelAndView("addProd");	
		m.setViewName("addProd");
		return m;
	}*/
	@RequestMapping("/productadd")
	public ModelAndView productadd()
	{
		System.out.println("-----about Controller------");
		 ModelAndView m = new ModelAndView("productadd");	
		m.setViewName("productadd");
		return m;
	}
	/*@RequestMapping("/viewproduct")
	public ModelAndView viewProduct()
	{
		System.out.println("-----about Controller------");
		 ModelAndView m = new ModelAndView("viewproduct");	
		m.setViewName("viewproduct");
		return m;
	}
	*/
	@RequestMapping("/weddingproduct")
	public ModelAndView weddingproduct()
	{
		System.out.println("-----allproducts Controller------");
		 ModelAndView m = new ModelAndView("weddingproduct");	
		m.setViewName("weddingproduct");
		return m;
	}
	@RequestMapping(value="/alogin", method = RequestMethod.GET)
	public ModelAndView alogin()
	{
		System.out.println("welcome to admin login page");
		ModelAndView m = new ModelAndView();
		m.setViewName("alogin");
		return m;
	 
	}
	
	@RequestMapping(value = "/login1", method = RequestMethod.GET)
	public ModelAndView culog()
	{
		System.out.println("-----loginpage Controller------");
		 ModelAndView m = new ModelAndView("login1");	
		m.setViewName("login1");
		return m;
	}
	 @RequestMapping(value = "/logout", method = RequestMethod.GET)
		public ModelAndView lgot() {
			System.out.println("-----Log Controller-----");
			m.setViewName("logout");
			return m;
		}
	 @RequestMapping(value="/allCustomers", method=RequestMethod.GET)
	 public ModelAndView allCust() {
		 ModelAndView m1 = new ModelAndView("allCustomers");	
		 
		 System.out.println("Welcome to the allCustomers");
		 return m1;
		 } 
	 @RequestMapping("/aindex")
		public ModelAndView aindex(){
			m.setViewName("aindex");
			return m;
		}
	 @RequestMapping("/cindex")
		public ModelAndView cindex(){
			m.setViewName("cindex");
			return m;
		}

	 @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
		public ModelAndView gohome1() {
			System.out.println("-----Access Controller-----");
			m.setViewName("accessdenied");
			return m;
		}
	 
	 
	 @RequestMapping(value="/productinfo",method=RequestMethod.GET)
		public ModelAndView productinfo()
		{
			System.out.println("-----productinfo Controller------");
			 ModelAndView m = new ModelAndView("productinfo");	
			m.setViewName("productinfo");
			return m;
		}
		 @RequestMapping(value="/admininfo", method=RequestMethod.GET)
		 public ModelAndView admininfo()
			{
		 System.out.println("-----admininfo------");
		 ModelAndView m = new ModelAndView("admininfo");	
		m.setViewName("admininfo");
		return m;
			}
	
		
	 @ModelAttribute("cust")
		public Customer getCust(){
			return new Customer();
		}
	 
	 
	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public ModelAndView signup()
	{
		System.out.println("-----signup Controller------");
		 ModelAndView m = new ModelAndView("signup");	
		m.setViewName("signup");
		return m;
	}
	
	@RequestMapping(value="/addCustomer", method=RequestMethod.POST)
	public String addCustomerdetails(@ModelAttribute("cust")@Valid Customer cust,BindingResult result){
		
		try{
		cobj.saveOrUpdate(cust);
		} catch (Exception e) {

		}
		 //ModelAndView m = new ModelAndView("result");
		if (result.hasErrors()) {
		//	m.addObject("command", new Customer());
			return "signUp";
		}

		else

			return "login1";
	}


		    
	
	 @RequestMapping(value="/showAddCust",method=RequestMethod.GET)
	 public ModelAndView showAddCust(){
	 	m.setViewName("signUp");
	 	m.addObject("command", new Customer());
	 	return m;
	 }
	 
		@RequestMapping(value = "/viewcustomer", method = RequestMethod.GET)
		public ModelAndView viewuser() {
			ModelAndView m = new ModelAndView();
			m.setViewName("viewcustomer");
			try {
				m.addObject("ls", cobj.findAll());
			} catch (Exception e) {
				System.out.println("Unable to view Customers.\t" + e);
				m.setViewName("adminlogin");
			}
			return m;
		}
				@RequestMapping(value = "/updCu/{id}", method = RequestMethod.GET)
				public ModelAndView updPdCust(@PathVariable("id") int id) {
					m.setViewName("updateCustomer");
					// m.addObject("command", pobj.viewProductById(id));
					m.addObject("command", cobj.findById(id));
					System.out.println(cobj.findById(id));
					a = id;
					return m;
				}		
				
				@RequestMapping(value = "/updc", method = RequestMethod.GET)
				public ModelAndView uCust(@ModelAttribute("WeddingDesigns") Customer c) {
					c.setId(a);
					cobj.saveOrUpdate(c);
					m.setViewName("redirect:/viewcustomer");
					return m;
				}
				
				@RequestMapping(value = "/delCu/{id}", method = RequestMethod.GET)
				public ModelAndView delCust(@PathVariable("id") int id) {
					cobj.delete(id);
					m.setViewName("redirect:/viewcustomer");
					return m;
				}
				
				
				/*
				 Product based controller 	
				 */

					@RequestMapping(value="/viewproduct",method=RequestMethod.GET)
					public ModelAndView showProd(){
						m.setViewName("viewproduct");
						m.addObject("ls", pobj.viewAllProducts());
						return m;
					}
					 
					@RequestMapping(value="/categories",method=RequestMethod.GET)
					public ModelAndView showCategories(){
						System.out.println("-----Categories Controller-----");
						m.addObject("ls", pobj.viewAllProducts());
						m.setViewName("categories");
						return m;
					}

					@ModelAttribute("prod")
					public Product getProduct(){
						return new Product();
					}

					
					@RequestMapping(value = "/showAddProd", method = RequestMethod.GET)
					public ModelAndView showAddProd1() {
						m.setViewName("addproduct");
						m.addObject("command", new Product());
						return m;
					}
					
					@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
					public ModelAndView addProd(@ModelAttribute("prod") @Valid Product prod, BindingResult result) {
						m.setViewName("updatefile");
						try {
							
							
						pobj.addProduct(prod);	
							//pd.addCategory(prod);
						} catch (Exception e) {
						}
						if (result.hasErrors())
							m.setViewName("addProduct");
						return m;
					}
					
				
					
					
					int a;
					@RequestMapping(value="/updPd/{id}",method = RequestMethod.GET)
					public ModelAndView updProd(@PathVariable("id")int id){
						m.setViewName("updateproduct");
						//m.addObject("command", pobj.viewProductById(id));
						m.addObject("command", pobj.viewProductById(id));
						System.out.println(pobj.viewProductById(id));a=id;
						return m;
					}
					
					@RequestMapping(value="/upd",method=RequestMethod.POST)
					public ModelAndView uPrd(@ModelAttribute("weddingDesigns")Product p){
						p.setPid(a);
						pobj.updateProduct(p);
						m.setViewName("redirect:/viewproduct");
						return m;
					}
					
					@RequestMapping(value="/delPd/{id}",method=RequestMethod.GET)
					public ModelAndView delProd(@PathVariable("id")int id){
						pobj.delProduct(id);
						m.setViewName("redirect:/viewproduct");
						return m;
					}
					@RequestMapping(value="/addcart/{id}")
					public String doaddcart(@RequestParam("id")int id){
						System.out.println("p = "+pobj.viewProductById(id));
						return "confirm";
					}
					
					@RequestMapping("/confirm")
					public String doconfirm(){
						m.setViewName("proddelivery");
						System.out.println("confirmed");
						return "proddelivery";
					}
				
			}