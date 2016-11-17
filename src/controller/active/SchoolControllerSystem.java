package controller.active;

import model.Active;
import model.base.BaseArgument;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.IActiveService;

import controller.base.ActiveController;
import controller.base.BaseController;

@Controller
@RequestMapping("school")
public class SchoolControllerSystem extends ActiveController{
	@Autowired(required=false)
	private IActiveService activeService;
	
	@RequestMapping("index.html")
	public ModelAndView index(ModelMap modelMap){
		Active active = new Active();
		active.setType(1);
		BaseArgument result = activeService.select(active);
		//System.out.println(result.getRtn("data"));
		modelMap.addAttribute("data",result.getRtn("data"));
		return this.createView("index", modelMap);
	}
	@RequestMapping("more_{id}.html")
	public ModelAndView chk(@PathVariable("id") Integer id,ModelMap modelMap){
		Active act = new Active();
		act.setId(id);
		Object obj = activeService.select(act).getRtn("data");
		modelMap.addAttribute("data", obj);
		return super.createView("active", modelMap);
	}
	
	
	
	
	
	
	protected ModelAndView createView(String path,ModelMap modelMap){
		String tempPath = "school/"+path;
		System.out.println(tempPath);
		return super.createView(tempPath,modelMap);
	}
}
