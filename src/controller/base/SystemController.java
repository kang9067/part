package controller.base;

import model.Users;

import org.apache.log4j.Logger;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

public class SystemController extends BaseController{
	private final static Logger log = Logger.getLogger(SystemController.class);
	public ModelAndView createView(String path,ModelMap modelMap){
		String tempPath = "System/"+path;
		System.out.println(tempPath);
		return super.createView(tempPath,modelMap);
	}
	
	public Users getUsersInfo(){
		return (Users) this.request.getSession().getAttribute("users");
	}
	
	public void setUsersInfo(Users user){
		this.request.getSession().setAttribute("users", user);
	}
}
