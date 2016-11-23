package controller.base;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;

public class AdminController extends BaseController{
	@Override
	protected ModelAndView createView(String path, ModelMap modelMap) {
		return super.createView("/admin/"+path, modelMap);
	}
	protected ModelAndView createView(String path){
		return super.createView("/admin/"+path, modelMap);
	}
}
