package controller.admin;

import model.Html;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.IHtmlService;
import controller.base.AdminController;

@Controller
@RequestMapping("admin/system")
public class HtmlControllerAdmin extends AdminController {
	private final static Logger log = Logger.getLogger(HtmlControllerAdmin.class);
	
	@Autowired
    IHtmlService htmlServiceImpl;
	
	@RequestMapping("list.html")
    public ModelAndView loadHtmlList() {
		modelMap.addAllAttributes(htmlServiceImpl.select(new Html()).getRtn());
		return this.createView("list",modelMap);
    }
    
    @RequestMapping("add_chk.html")
    public String addHtml() {
    	return null;
    }
    
    @RequestMapping("edit_chk.html")
    public String editHtml() {
    	return null;
    }
    
    @RequestMapping("del.html")
    public String delHtml() {
    	return null;
    }
    @Override
	protected ModelAndView createView(String path, ModelMap modelMap) {
		return super.createView("system/"+path, modelMap);
	}
}