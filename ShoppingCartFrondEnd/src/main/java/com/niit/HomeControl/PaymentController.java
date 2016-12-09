package com.niit.HomeControl;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend.DAO.CreditCardDao;
import com.niit.backend.DAO.ShippingAddressDao;
import com.niit.backend.DAO.UserDao;
import com.niit.backend.model.CreditCard;
import com.niit.backend.model.ShippingAddress;
import com.niit.backend.model.User;

@Controller
@SessionAttributes("email")
public class PaymentController {

	

	
	
	@Autowired(required = true)
	private UserDao userDao;
	
	
	
	
	
	@Autowired
	private CreditCardDao creditCardDao;
	
	
	
	@Autowired
	private ShippingAddressDao shippingAddressDao;
	
	@RequestMapping("/Proceed/{username}")
	public ModelAndView Proceed (@PathVariable("username") String username){
		
		ShippingAddress shippingAddress = shippingAddressDao.get(username);
		
		List<ShippingAddress> shippingAddresses = shippingAddressDao.list(shippingAddress.getId());
				
		ModelAndView mv = new ModelAndView("/success");
		mv.addObject("shippingAddresses", shippingAddresses);
		mv.addObject("isPlaceOrderClicked", true);
		
		
		return mv;		
	}
	
	@RequestMapping("/paymentMethod/{email}")
	public 	ModelAndView paymentMethod(@PathVariable("email") String email){
		User user = userDao.get(email);
		
		Random t = new Random();
		int day = t.nextInt(7);
		ModelAndView mv = new ModelAndView("/success");
		mv.addObject("User", user);
		mv.addObject("day", day);
		mv.addObject("ProductDelivered", true);
		return mv;
		
	}
	
	@RequestMapping("/onLinePayment/{username}")
	public ModelAndView OnLinePayment(@PathVariable("username") String username)
	{
		User user = userDao.get(username);		
		
		ModelAndView mv = new ModelAndView("success");
		mv.addObject("onLinePaymentClicked", true);
		
		return mv;
	}
	
	
	@RequestMapping("/cardPayment/{email}")
	private  String cardPayment(@ModelAttribute CreditCard creditCard, @PathVariable ("email") String email){
		
		creditCardDao.saveOrUpdate(creditCard);
		
		return "redirect:/cashOnDelivery/{email}";
	}
	
	
	@RequestMapping("/cashOnDelivery/{email}")
	public ModelAndView cashOnDelivery(@PathVariable("email") String email)
	{
		User user = userDao.get(email);
		ModelAndView mv = new ModelAndView("success");
		mv.addObject("User", user);
		mv.addObject("cashOnDeliveryClicked", true);
		
		return mv;
	}
	@RequestMapping(value="/shiipingAddess/{email}" ,method=RequestMethod.POST)
	public ModelAndView shippingAdresss(@ModelAttribute ShippingAddress shippingAddress, @PathVariable ("email") String email){
		
		User user = userDao.get(email);
		
		ShippingAddress shippingaddress = new ShippingAddress();
		//shippingaddress.setId(user.getEmail());
		//shippingAddress.setId(user.getEmail());
		shippingAddressDao.saveOrUpdate(shippingAddress);
		
		Random t = new Random();
		int day = t.nextInt(7);
		
		ModelAndView mv = new ModelAndView("success");
		mv.addObject("ProductDelivered", true);
		mv.addObject("User", user);
		mv.addObject("day", day);
		return mv;
		
	}
	
	
	
	@ModelAttribute
	public void commonObject(Model model){	
		
		model.addAttribute("isLoggedInUser", true);
		String message = "You Have Successfully Logged In";
		model.addAttribute("msg", message);
	}
	
	
	
}
