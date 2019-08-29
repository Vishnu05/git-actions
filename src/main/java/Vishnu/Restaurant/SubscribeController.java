package Vishnu.Restaurant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Vishnu.Dao.SubscribeDAO;
import Vishnu.Model.Subscribe;

@Controller
public class SubscribeController {

	@Autowired
	SubscribeDAO subscribeDAO;
	
	@RequestMapping(value="AddSubscribe",method=RequestMethod.POST)
	public String addSubscribe(@ModelAttribute("subscribe")Subscribe subscribe,Model m)
	{
		subscribeDAO.addSubscribe(subscribe);
	
		List<Subscribe> listSubscribe=subscribeDAO.retrieveSubscribe();
		m.addAttribute("subscribeList",listSubscribe);
		
		return "redirect:/home";
	}
	
	
}
