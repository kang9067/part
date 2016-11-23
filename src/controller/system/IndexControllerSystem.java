package controller.system;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import controller.base.BaseController;
import controller.base.SystemController;
/**
 * html 访问一般的jsp页面
 * do 需要权限的一些操作
 * 带参无权限不需要后缀
 * @author tank 
 * @since 2016年11月7日14:10:50
 */
@Controller
public class IndexControllerSystem extends SystemController{
	private final static Logger log = Logger.getLogger(BaseController.class);
	@RequestMapping("{html}.html")
	public ModelAndView execute(@PathVariable(value="html") String html,ModelMap modelMap){
		return createView(html, modelMap);
	}
	
	@RequestMapping(value="/")
	public ModelAndView index(ModelMap modelMap){
		return createView("index", modelMap);
	}
	
	/*@RequestMapping("register.html")
	public ModelAndView register(ModelMap modelMap){
		System.out.println("index.html start!");
		return createView("register", modelMap);
	}*/
}
