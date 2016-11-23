package controller.admin;

import java.util.Arrays;
import java.util.List;

import model.Admin;
import model.Users;
import model.base.BaseArgument;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.IAdminService;
import service.IUsersService;

import controller.base.AdminController;
/**
 * 用户管理
 * @author Administrator
 * add_chk.html add_chk 添加用户
 */
@Controller
@RequestMapping("admin/users")
public class UsersControllerAdmin extends AdminController{
	@Autowired
	IUsersService usersService;
	@RequestMapping("edit_chk.html")
	public void edit_chk(
			Users users
			){
		//modelMap.addAllAttributes(usersService.select(new Users().setId(id)).getRtn());
		//return this.createView("member-add",modelMap);
		users.setGender(Integer.valueOf(this.request.getParameter("gender")));//不能识别gender  暂时不明白是什么问题
		System.out.println(users);
		if(usersService.update(users).getCode() == BaseArgument.FAILED){
			this.outString("0");
		}
		this.outString("1");
	}
	@RequestMapping("member-edit.html")
	public ModelAndView edit(@RequestParam("id") Integer id){
		modelMap.addAllAttributes(usersService.select(new Users().setId(id)).getRtn());
		return this.createView("member-add",modelMap);
	}
	
	@RequestMapping("add_chk.html")
	@ResponseBody
	public void add_chk(
			Users users
			){
		users.setGender(Integer.valueOf(this.request.getParameter("gender")));//不能识别gender  暂时不明白是什么问题
		if(usersService.insertSelecitve(users).getCode() == BaseArgument.FAILED){
			this.outString("0");
		}
		this.outString("1");
	}
	@RequestMapping("member-list.html") 
	public ModelAndView memnerList(
			ModelMap modelMap
			){
		BaseArgument  data =  usersService.select(new Users());
		modelMap.addAllAttributes(data.getRtn());
		
		/*System.out.println(request.getParameter("gender"));
		System.out.println(Arrays.toString(request.getParameterValues("gender")));*/
		return this.createView("member-list",modelMap);
	}
	@RequestMapping("{html}.html")
	public ModelAndView html(@PathVariable("html") String html){
		return this.createView(html,null);
	}
	@Override
	protected ModelAndView createView(String path, ModelMap modelMap) {
		return super.createView("users/"+path, modelMap);
	}
	
}
