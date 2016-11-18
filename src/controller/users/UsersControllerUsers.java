package controller.users;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import controller.base.UsersController;

@Controller
@RequestMapping("users")
public class UsersControllerUsers extends UsersController{
	@RequestMapping("index.html")
	public ModelAndView index(ModelMap modelMap){
		return this.createView("index", modelMap);
	}
	
	
}