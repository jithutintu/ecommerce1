package com.niit.HomeControl;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


import com.niit.backend.DAO.CategoryDao;
import com.niit.backend.DAO.ProductDao;
import com.niit.backend.DAO.QueriesDao;
import com.niit.backend.DAO.UserDao;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;
import com.niit.backend.model.Queries;
import com.niit.backend.model.User;





@Controller
public class HomeController {
	
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private ProductDao productDao;
	@SuppressWarnings("unused")
	@Autowired
	private Category category;
	@SuppressWarnings("unused")
	@Autowired
	private Product product;
	@Autowired
	private QueriesDao queriesDao;

@RequestMapping(value="/")
public ModelAndView showindex(Model model)
{
	model.addAttribute("ch","true");
	ModelAndView mv=new ModelAndView("index");
	List<Category> CategoryList = categoryDao.list();
	List<Product> List = productDao.list();
	mv.addObject("productList",List);
	mv.addObject("categoryList",CategoryList);
   
	return mv;
	
}
@RequestMapping(value="/home")
public ModelAndView showHome(Model mod)
{
	ModelAndView mv=new ModelAndView("/index");
	List<Category> CategoryList = categoryDao.list();
	List<Product> List = productDao.list();
	mv.addObject("productList",List);
	mv.addObject("categoryList",CategoryList);
	mv.addObject("isProductClicked", true);
	//mod.addAttribute("LoggedInUser", true);
	mod.addAttribute("ch","true");
	return mv;

}
@RequestMapping(value="/managepage")
public ModelAndView showadminmanage(Model mod){
ModelAndView mv=new ModelAndView("admin");
return mv;

}	
		@RequestMapping("/registeruser")
    public String registerUser(Model model) {

    	User user = new User();
       
        model.addAttribute("user", user);

        return "registeruser";

    }
		
		@RequestMapping("/register")
		public String registerUser(@ModelAttribute User user, @RequestParam(value = "email") String email, ModelMap mod) {
		
	
			if(userDao.isAllReadyRegister(email, true))		{
				
				mod.addAttribute("isAllReadyRegister", "true");	
			
				mod.addAttribute("userexists","Your Email Id All Ready Registered");
				return "registeruser";
					}
			else {
				user.setRole("ROLE_USER");
				user.setEnabled(true);
				userDao.saveorupdate(user);
				mod.addAttribute("success","You r Registered SuccessFully");
				
			
			}
	
			
			return "login";
		}
		
		
		@RequestMapping("/aboutus")
		public String sayAbout() {
			return "aboutUs";
		}
		
		@RequestMapping(value = "/contactus")
		public ModelAndView getQuery() {
			Queries query = new Queries();
			return new ModelAndView("contactUs", "contact", query);
		}

		@RequestMapping(value = "/contactus", method = RequestMethod.POST)
		public String addQuery( @ModelAttribute(value = "contact") Queries query, Model model,HttpSession session, BindingResult result) {
			String emailid=(String)session.getAttribute("email");
			if(emailid!= null){

				queriesDao.addQuery(query);
				List<Category> CategoryList = categoryDao.list();
				List<Product> List = productDao.list();
				model.addAttribute("productList",List);
				model.addAttribute("categoryList",CategoryList);
				model.addAttribute("querySuccess",
						"Thank you, Your Message stored in our Server we will contact through corresponding Mail");
				
				 return "index";
			}
			if (result.hasErrors())
				return "contactUs";

			queriesDao.addQuery(query);
			model.addAttribute("querySuccess",
					"Thank you, Your Message stored in our Server we will contact through corresponding Mail");
			return "login";

		}
		
		

		
	/*		
    /*
     * registerUserPost method is used to register user into  the system and to show registration related errors
     *//*
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUserPost(@ModelAttribute("user") User user, BindingResult result,
                                       Model model) {
    	System.out.println("jithu");
        if (result.hasErrors()) {
            return "registeruser";
        }

            user.setRole("ROLE_USER");
        //usersDetail.setEnabled(true);
        //usersDetailService.addUser(usersDetail);
userDao.saveorupdate(user);
        return "success";

    }*/
    
   
    @RequestMapping("/Loginpage")

    public ModelAndView Login( Model mod)
    {	
    	ModelAndView mv = new ModelAndView("login");
    	
    
    	
    return mv;

    }
    
    @RequestMapping("/logincheck")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
            required = false) String logout, Model model) {
        if (error!=null) {
        	
        	
            model.addAttribute("error", "Invalid username and password");
        }

        if(logout!=null) {
        	
            model.addAttribute("logout", "You have been logged out successfully.");
        }

        return "login";
    }
    
    
    
    @RequestMapping("/viewproduct/{name}")
	public ModelAndView viewCategoryItems(@PathVariable ("name") String name){
		List<Category> CategoryList = categoryDao.list();
		List<Product> productList = productDao.list(name);
		ModelAndView mv = new ModelAndView("/index");
		mv.addObject("productList", productList);
		mv.addObject("categoryList",CategoryList);
		return mv;
    }
    

	@ModelAttribute
	public void commonToProduct(Model model){
		 List<Category> CategoryList = categoryDao.list();
		 model.addAttribute("categoryList",CategoryList);
	}
    
}