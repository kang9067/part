package controller.system;

import java.util.ArrayList;

import model.Users;
import model.base.BaseArgument;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.IUsersService;
import controller.base.SystemController;
/**
 * 登录注册功能管理界面
 * @author can xx
 * 1.登录验证
 * 2.注册验证
 * 3.email验证
 * 4.昵称验证
 */
@Controller
public class UserControllerSystem extends SystemController{
	
	private final static Logger log = Logger.getLogger(UserControllerSystem.class);
	 
	@Autowired(required=false)
	private IUsersService userService;
	/**
	 * 登录验证
	 * @param user
	 * @return
	 */
	@RequestMapping("login_chk.html")
	public ModelAndView login(Users user,ModelMap modelMap){
		try{
		Users u = ((ArrayList<Users>)userService.select(user).getRtn().get("data")).get(0);
		if(u != null){//登录成功
			this.setUsersInfo(u);
			return this.createRedirectView("index",modelMap);
		}}catch (Exception e) {
		}
		modelMap.addAttribute("msg","用户名或者密码错误!");
		return this.createView("login",modelMap);
	}
	/**
	 * 注册验证
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("register_chk.html")
	public String register(Users user, ModelMap model){
		BaseArgument arg = new BaseArgument().setObj(user);
		System.out.println(user.getClass());
		userService.insertSelecitve(user);
		return this.createRedirectString("index");
	}
	/**
	 * email验证
	 */
	@RequestMapping("email_chk.html")
	public void email(){
		//System.out.println("email_chk start");
		String email = request.getParameter("email");
		Users obj = new Users();
		obj.setEmail(email);
		@SuppressWarnings("unchecked")
		ArrayList<Users> arg = (ArrayList<Users>) userService.select(obj).getRtn().get("data");
		//System.out.println( userService.select(obj).getCode());
		if(arg.size() >= 1){
			this.outMessage(0, "不能注册!");
		}else{
			this.outMessage(1, "可以注册!");
		}
	}
	/**
	 * 呢称验证
	 * @param nickname
	 */
	@RequestMapping("nickname_chk.html")
	public void nickName(@RequestParam("nickname") String nickname){
		Users obj = new Users().setNickname(nickname);
		@SuppressWarnings("unchecked")
		ArrayList<Users> result = (ArrayList<Users>) userService.select(obj).getRtn().get("data");
		
		if(result.size() >= 1){
			this.outMessage(0, "昵称已经被使用!");
		}else{
			this.outMessage(1, "昵称可以被注册!");
		}
	}
}
