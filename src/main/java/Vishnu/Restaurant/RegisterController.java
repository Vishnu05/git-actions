package Vishnu.Restaurant;


import Vishnu.Model.Register;
import Vishnu.Model.goooo;

import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Vishnu.Dao.RegisterDao;

@Controller
public class RegisterController {

	@Autowired
	RegisterDao registerDao;
	
	@RequestMapping(value="AddRegister",method=RequestMethod.POST)
	public String addRegister(@ModelAttribute("register")Register register,Model m, ServletRequest request)
	{
		System.out.println(register);
		Register user=new Register();
		
		user.setUser_registered_on(new Date());
		System.out.println("------------------------"+new Date());
		registerDao.addRegister(register);
		
		//  ServletRequest request = null;
		String to = request.getParameter("email");

	      // Sender's email ID needs to be mentioned
	      String from = "kumarsg120@gmail.com";

	      // Assuming you are sending email from localhost
	      String host = "smtp.gmail.com";

	      // Get system properties
	      Properties properties = System.getProperties();

	      // Setup mail server
	      properties.setProperty("mail.smtp.host", host);

	      // Get the default Session object.
	      Session session = Session.getDefaultInstance(properties);

	      try{
	         // Create a default MimeMessage object.
	         MimeMessage message = new MimeMessage(session);

	         // Set From: header field of the header.
	         message.setFrom(new InternetAddress(from));

	         // Set To: header field of the header.
	         message.addRecipient(Message.RecipientType.TO,
	                                  new InternetAddress(to));

	         // Set Subject: header field
	         message.setSubject("SUVJECT_LINE");

	         // Now set the actual message
	         message.setText("YOUR MESSAGE GOES HERE");

	         // Send message
	         Transport.send(message);
	         System.out.println("Sent message successfully....");
	      }catch (MessagingException mex) {
	         mex.printStackTrace();
	      }
	   
		
//		List<Register> listRegister=registerDao.retrieveRegister();
//		m.addAttribute("registerList",listRegister);
//		
		return "redirect:/login";
	}
	
	@RequestMapping("/register")
	public String Showregister(Model m)
	{
		Register register=new Register();
		m.addAttribute(register);
		
//		List<Register> listRegister=registerDao.retrieveRegister();
//		m.addAttribute("registerList",listRegister);
		return "register";
	}
	
	
	
	@RequestMapping("/login_success")
	public ModelAndView loginSuccess(HttpSession session, Model m) {
		
		String page = null;
		
		boolean loggedIn = true;
		// Retrieving the userId;
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("username", username);
		session.setAttribute("loggedIn", loggedIn);
		
		// Retrieving the role
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		
		String role="Role_User";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 session.setAttribute("UserLoggedIn", "true");
		    	 session.setAttribute("username", username);
		    	 m.addAttribute("role",authority.getAuthority());
		    	 session.setAttribute("role", authority.getAuthority());
		    	 System.out.println(authority.getAuthority());
		    	 page="userhome";		    	 
		    	 break;
		     }
		     else 
		     {
		    	 session.setAttribute("LoggedIn", "true");
		    	 session.setAttribute("Administrator", "true");
		    	 m.addAttribute("role",authority.getAuthority());
		    	 session.setAttribute("role", authority.getAuthority());
		    	 page="adminhome";
		    	 break;
		    }
		} 
		
		return new ModelAndView(page,"username",username);
		
	}
	
	@RequestMapping(value="/perform_logout")
	public ModelAndView logout(HttpServletRequest request,HttpSession session)
	{
		System.out.println("Logout page");
		session.invalidate();
		//session=request.getSession(true);
		System.out.println("Log Out Successfull");
		
		return new ModelAndView("redirect:/home");
	}
	
	@RequestMapping(value="addgo",method=RequestMethod.POST)
	public String gotow(@ModelAttribute("go") goooo go){
		registerDao.addgo(go);
		return "go";
	}
	
	
	@RequestMapping(value="go")
	public String go(Model m){
		goooo go=new goooo();
		m.addAttribute(go);
		return "go";
	}
} 

		
		
		
		
		
		
		