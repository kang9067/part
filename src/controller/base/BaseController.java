package controller.base;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Users;
import model.base.BaseArgument;

import org.apache.log4j.Logger;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import service.impl.base.IBaseService;

import com.alibaba.fastjson.JSON;

@Controller
public class BaseController {
	private final static Logger log = Logger.getLogger(BaseController.class);
	
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected HttpSession session;
	protected ModelMap modelMap;
	@Resource(name="baseService")
	public IBaseService baseService;
	
	@ModelAttribute
	public void setReqAndRes(HttpServletRequest request, HttpServletResponse response,ModelMap modelMap) {
		this.request = request;
		this.response = response;
		this.session = request.getSession();
		this.modelMap = modelMap;
		request.getSession().getServletContext().setAttribute("msg", null);
	}
	/**
	 * 解决时间问题 
	 * @param binder
	 */
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	public String getMsg(String key){
		return (String) request.getSession().getAttribute(key);
	}
	public void setMsg(String msg){
		request.getSession().getServletContext().setAttribute("msg", msg);
	}
	public String getParameString(String name){
		return request.getParameter(name);
	}
	public Integer getParameInt(String name) {
		return Integer.valueOf(getParameString(name));
	}
	public Users getUsersInfo(){
		return (Users) this.request.getSession().getAttribute("users");
	}
	
	public void setUsersInfo(Users user){
		this.request.getSession().setAttribute("users", user);
	}
/*	protected Object getUserInfo() {
		return null;
	}
	
	public String getUserId(){
		return "";
	}*/

	/**
	 * 输出数据到前端
	 * @param str
	 */
	protected void outString(String str) {
        try {
         //   request.setCharacterEncoding("text/html;UTF-8");
            response.setContentType("text/html;charset=UTF-8");
            ServletOutputStream sos = response.getOutputStream();
            if(str == null){
            	str = "";
            }
            sos.write(str.getBytes("UTF-8"));
            sos.flush();
            sos.close();
        } catch (Exception e) {
            log.error(e.getMessage(), e);
            e.printStackTrace();
        }
    }
	
	/**
	 * 输出Object对象到前端页面（最终都是封装成BaseArgument对象）
	 * @param obj
	 */
	protected void out(Object obj) {
        try {
            if(obj instanceof BaseArgument){
                outString(JSON.toJSONString(obj));
            } else {
                BaseArgument br = new BaseArgument();
                br.success();
                if(obj == null){
                    br.setDataToRtn(new HashMap<String, Object>());
                } else {
                    br.setDataToRtn(obj);
                }
                outString(JSON.toJSONString(br));
            }
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
    }
    
	/**
	 * 输出BaseArgument对象到前端页面
	 * @param obj
	 */
	protected void out(BaseArgument br) {
        try {
            outString(JSON.toJSONString(br));
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
    }

	/**
	 * 输出List对象到前端页面（最终都是封装成BaseArgument对象）
	 * @param obj
	 */
	protected void out(List<Object> list) {
        try {
            BaseArgument br = new BaseArgument();
            br.success();
            if(list == null){
                br.setDataToRtn(new ArrayList<Object>());
            } else {
                br.setDataToRtn(list);
            }
            outString(JSON.toJSONString(br));
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
    }
	protected ModelAndView createView(String path,ModelMap modelMap){
		log.trace(path);
		return new ModelAndView(path,modelMap);
	}
	

	public void outMessage(Integer msg,String message){
		String context = "{message:{0},text:'{1}'}";
		context = context.replace("{0}", msg+"");
		context = context.replace("{1}", message);
		outString(context);
	}
	
	/**
	 * 跳转 重定向
	 * @param path
	 * @return
	 */
	public String createRedirectString(String path){
		return "redirect:"+path+".html";
	}
	/**
	 * 跳转重定向 带参数
	 * @param path
	 * @param modelMap
	 * @return
	 */
	public ModelAndView createRedirectView(String path,ModelMap modelMap){
		return new ModelAndView("redirect:"+path+".html",modelMap);
	}
}
