package controller.admin;

import java.util.List;

import model.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.IAdminService;

import controller.base.AdminController;

@Controller
@RequestMapping("admin")
public class IndexControllerAdmin extends AdminController{
	
	@Autowired
	IAdminService adminService;
	@RequestMapping("{html}.html")
	public ModelAndView html(@PathVariable("html") String html){
		return this.createView(html,null);
	}
	@RequestMapping("login_chk.html")
	public ModelAndView login(
			Admin admin,
			ModelMap modelMap
			){
		
		@SuppressWarnings("unchecked")
		List<Admin> admins = (List<Admin>) adminService.select(admin).getRtn("data");
		if(admins == null || admins.size() == 0){
			this.setMsg("登录失败,用户名或者密码错误!");
			return this.createRedirectView("login",modelMap);
		}
		this.request.getSession().setAttribute("users", admins.get(0));
		return this.createRedirectView("index", modelMap);
	}
}
