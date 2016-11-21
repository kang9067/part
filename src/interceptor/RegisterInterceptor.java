package interceptor;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import service.IUsersService;

public class RegisterInterceptor  implements HandlerInterceptor {
	
	@Autowired(required=false)
	private IUsersService userService;
	
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		ServletContext application = request.getSession().getServletContext();
		String nickname = request.getParameter("nickname");//验证用户名
		Users obj = new Users().setNickname(nickname);
		@SuppressWarnings("unchecked")
		ArrayList<Users> result = (ArrayList<Users>) userService.select(obj).getRtn().get("data");
		if(result != null && result.size() >= 1){
			//this.outMessage(0, "昵称已经被使用!");
			application.setAttribute("msg", "用户名已经被注册");
			response.sendRedirect("/register.html");
			return false;
		}
		String pwd = request.getParameter("pwd");//验证密码
		if(pwd == null ||  pwd.length() < 6 || pwd.length() > 13){
			application.setAttribute("msg", "密码长度错误");
			response.sendRedirect("/register.html");
			return false;
		}
		String phone = request.getParameter("phone");//验证结果
		if(phone == null || phone.length() != 11){
			application.setAttribute("msg", "请填写正确的手机号码");
			response.sendRedirect("/register.html");
			return false;
		}
		return true;
	}

}
