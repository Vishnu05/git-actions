  package Vishnu.Restaurant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
	public class HelloController {
		@RequestMapping("/index")
		public String index(){
			return "index";
		}
	
		@RequestMapping("/login")
		public String gotologin()
		{
			return "login";
		}
		
		@RequestMapping("/aboutus")
		public String goToaboutus()
		{
			return "aboutus";
		}
		
		@RequestMapping("/home")
		public String gotohome()
		{
			return "home";
		}
	
		@RequestMapping("/briyani")
		public String gotobriayani()
		{
			return "briyani";
		}
		
		@RequestMapping("/tandoori")
		public String gototandoori()
		{
			return "tandoori";
		}

		@RequestMapping("/kebab")
		public String gotokebab()
		{
			return "kebab";
		}

		@RequestMapping("/grillchicken")
		public String gotogrillchicken()
		{
			return "grillchicken";
		}
		
		@RequestMapping("/shawarma")
		public String gotoshawrma()
		{
			return "shawarma";
		}
		   
	 	 @RequestMapping("/adminhome")
	 	 public String gotoadminhome()
	 	 {
	 		 return "adminhome";
	 	 }
	 	 	 	  
	 	 @RequestMapping("/userhome")
	 		 public String gotouserhome()
	 		 {
	 			 return "userhome";
	 		 }
	 	  
	 	 @RequestMapping("/contactus")
	 	 public String gotoconatctus()
	 	 {
	 		 return "contactus";
	 	 }
	 	 
	 	 @RequestMapping("/loginf")
	 	 public String gotologinf()
	 	 {
	 		 return "loginf";
	 	 }
	 	 
	 	 
	 	 @RequestMapping("/orderconfirm")
	 	 public String gotoorder()
	 	 {
	 		 return "orderconfirm";
	 	 }
	 	 
	 	
}


	
