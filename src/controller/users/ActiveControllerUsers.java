package controller.users;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import model.Active;
import model.RActiveUsers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import service.IActiveService;
import service.IRActiveUsersService;
import util.upload.UploadEntity;

import controller.base.BaseController;
import controller.base.UsersController;

@Controller
@RequestMapping("users")
public class ActiveControllerUsers extends UsersController{
	private final static Logger log = Logger.getLogger(UsersController.class);
	
	
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
	public String push_active_chk(
			ModelMap modelMap
			,Active active 
			){
		MultipartFile file = 	((MultipartRequest)request).getFile("imgCover");
		active.setUid(this.getUsersInfo().getId());
		active.setAuther(this.getUsersInfo().getName());
		active.setType(1);//默认学校
		String imgCover = null;
		System.out.println(active);
		UploadEntity entiry = new UploadEntity(file);
		try {
			imgCover = entiry.savePhoto(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
		active.setCover(imgCover);
		Object obj = activeService.insertSelecitve(active).getRtn("data");
		
		log.info(obj);
		
		System.out.println(active);
		//this.out("发布成功");
		return this.createRedirectString("/school/more_{1}".replace("{1}", active.getId()+""));
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
