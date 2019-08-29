package Vishnu.Restaurant;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Vishnu.Dao.ProductDAO;
import Vishnu.Dao.RegisterDao;
import Vishnu.DaoImpl.CartDAOImpl;
import Vishnu.Model.Cart;
import Vishnu.Model.Product;
import Vishnu.Model.Register;

@Controller
public class CartController {
	
	@Autowired
	CartDAOImpl cartDAOImpl;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	RegisterDao userDAOImpl;
	
	
	@RequestMapping(value="/addcartproduct/{name}",method=RequestMethod.GET)
	public ModelAndView edit(@PathVariable("name") String productname,HttpSession session,Model m){  
		Cart cart=new Cart();
		String username=(String)session.getAttribute("username");
	//	Register u = userDAOImpl.getRegister(username);
		cart.setCartid(1000);
		cart.setStatus("N");
		cart.setUsername(username);
		System.out.println(productname);
		String n=productname;
		 Product p = new Product();
		 int flag=1;
			 
		 p = productDAO.getProductbyName(n);
		  try
		{
			p.getProductName();
		}
		catch(NullPointerException e){
			
         	System.out.println("Not Found in Product Table");
         	flag=0;
         	
         	
		  }
         	
         	finally{
         		if(flag==0)
         		{
         			p.setCatId(0);
         			p.setProductDesc("NOT FOUND");
         			p.setProductId(0);
         		    p.setProductName("NOT FOUND");
         		    p.setPrice(0);
         		    p.setQuantity(0);
         		}
         	}
		    
		  cart.setProductId(p.getProductId());
			cart.setProductName(p.getProductName());
			cart.setPrice(p.getPrice());
			cart.setQuantity(1);
		  
		List<Cart>list=cartDAOImpl.retrive(username);
		m.addAttribute("cartitems", list);
		cartDAOImpl.insertCart(cart);
		return new ModelAndView("redirect:/cart");
    } 
	
	 
	@RequestMapping(value="/deleteCartItem/{citemid}",method=RequestMethod.GET)
	public ModelAndView deleteCartItem(@PathVariable("citemid")int citemid,HttpSession session,Model m)
	{
		
		Cart cart=(Cart)cartDAOImpl.getCart(citemid);
		cartDAOImpl.removeCart(cart);
		String username=(String)session.getAttribute("username");
		return new ModelAndView("redirect:/cart");
		
	}
	
	@RequestMapping(value="/cart",method=RequestMethod.GET)
	public ModelAndView viewmycart(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("username");
		List<Cart>list=cartDAOImpl.retrive(username);
		int n= list.size();
		if(n==0)
			m.addAttribute("n",n);
		return new ModelAndView("cart","cartitems",list);
		
	}
	
	@RequestMapping(value ="/addquty/{val}/{productName}/{id}", method = RequestMethod.GET)
	@ResponseBody
	public void checkUsername(@PathVariable("val") int val,@PathVariable("productName") String productName,@PathVariable("id") int id, HttpServletResponse response ,HttpSession session,HttpServletRequest request) throws IOException {
        
	    response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    String username=(String)session.getAttribute("username");
	    System.out.println(val);
	    System.out.println(productName);
	    cartDAOImpl.setQuantity(username, productName, val, id);
	    System.out.println("SUCESSFULLY SET");  

	}


} 
 