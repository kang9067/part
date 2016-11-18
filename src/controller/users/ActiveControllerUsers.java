package controller.users;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import model.Active;
import model.RActiveUsers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.IActiveService;
import service.IRActiveUsersService;

import controller.base.UsersController;

@Controller
@RequestMapping("users")
public class ActiveControllerUsers extends UsersController{
	@Autowired
	private IActiveService activeService;
	@Autowired
	private IRActiveUsersService rActiveUsersService;
	@RequestMapping("active.html")
	public ModelAndView active_list(ModelMap modelMap){
		RActiveUsers rActiveUsers = new RActiveUsers();
		rActiveUsers.setUid(this.getUsersInfo().getId());
		@SuppressWarnings("unchecked")
		List<RActiveUsers> tempData = (List<RActiveUsers>) rActiveUsersService.select(rActiveUsers).getRtn().get("data");
		List<Active> actives = new ArrayList<Active>();
		if(tempData != null && tempData.size()>0){
			for(RActiveUsers value:tempData){
				actives.add((Active) activeService.selectByPrimaryKey(Active.class, value.getAid()).getObj());
			}
		}
		modelMap.addAttribute("data",actives);
		return this.createTlpView("table_static", modelMap);
		
	}
	/**
	 * 发布活动 2016年11月18日14:54:36
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("push_active.html")
	public ModelAndView push_active(
			ModelMap modelMap
			){
		return this.createTlpView("pushActive", modelMap);
	}
	@RequestMapping("push_active_chk.html")
	public void push_active_chk(
			Active active,
			ModelMap modelMap
			){
		
		active.setUid(this.getUsersInfo().getId());
		active.setAuther(this.getUsersInfo().getName());
		active.setType(1);//默认学校
		activeService.insertSelecitve(active);
		this.out("发布成功");
	}
	/**
	 * html页面直接跳转
	 * @param name
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("tpl/{name}.html")
	public ModelAndView tpl_html(@PathVariable("name") String name
			,ModelMap modelMap
			){
		return this.createTlpView(name, modelMap);
	}
	@RequestMapping("tpl/blocks/{name}.html")
	public ModelAndView tpl_blocks_html(@PathVariable("name") String name
			,ModelMap modelMap
			){
		return this.createTlpView("blocks/"+name, modelMap);
	}
}
