package controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.IActiveService;
import service.IAdminService;

import controller.base.AdminController;
import model.Active;
import model.Admin;
import model.base.BaseArgument;
@Controller
@RequestMapping("admin/active")
public class ActiveControllerAdmin extends AdminController{
	
	@Autowired
	IActiveService activeService;
	@RequestMapping("del.html")
	public ModelAndView del(
			Active record 
			){
		  activeService.delete(Active.class, record.getId());
		return this.createView("list",modelMap); 
	}
	@RequestMapping("list.html")
	public ModelAndView list(){
		Active record = new Active();
		BaseArgument  data =   activeService.select(record);
		modelMap.addAllAttributes(data.getRtn());
		return this.createView("list",modelMap); 
	}
	@RequestMapping("edit.html")
	public ModelAndView edit(){
		Active record = new Active();
		record.setId(this.getParameInt("id"));
		BaseArgument  data =   activeService.select(record);
		modelMap.addAllAttributes(data.getRtn());
		return this.createView("edit",modelMap); 
	}
	@RequestMapping("edit_chk.html")
	public void edit_chk(
			Active record
			){
		System.out.println(record);
		activeService.update(record);
		this.outString("修改成功");
	}
	
	@RequestMapping("{html}.html")
	public ModelAndView html(@PathVariable("html") String html){
		return this.createView(html,modelMap);
	}
	
	@Override
	protected ModelAndView createView(String path, ModelMap modelMap) {
		return super.createView("active/"+path, modelMap);
	}
}
