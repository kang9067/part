package controller.system;

import java.util.ArrayList;

import model.RActiveUsers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.IActiveService;
import service.IRActiveUsersService;

import controller.base.SystemController;
import controller.base.UsersController;

@Controller
public class PaymentControllerSystem extends SystemController{
	private final static Logger log = Logger.getLogger(PaymentControllerSystem.class);
	@Autowired
	private IRActiveUsersService rActiveUsersService;
	
	@RequestMapping("payment_vif.html")
	public ModelAndView payment_vif_html(ModelMap modelMap){
		
		
		//return this.createRedirectView("payment_vif",modelMap);
		RActiveUsers rau = new RActiveUsers().
				setAid(this.getParameInt("activeId")).
				setUid(this.getUsersInfo().getId());
		@SuppressWarnings("unchecked")
		ArrayList<Object> data = (ArrayList<Object>)rActiveUsersService.select(rau).getRtn("data");
		if( data != null && data.size() > 0){//重复下单 不插入
			
			/*return new ModelAndView("redirect:/users/index.html#/app/active");*/
		}else{
			rActiveUsersService.insertSelecitve(rau);
			log.info("用户"+this.getUsersInfo().getNickname()+"参与了"+this.getParameInt("activeId")+"项目");
			//System.out.println();
		}
		
		
		return new ModelAndView("redirect:/users/index.html#/app/active");
	}
}