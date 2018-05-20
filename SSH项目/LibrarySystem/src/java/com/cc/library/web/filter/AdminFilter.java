package com.cc.library.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cc.library.domain.Admin;


public class AdminFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
//request和response到底从哪里来 到底存放的是什么
//request存放的是用户请求信息 response存放的是服务器响应信息
//当客户端第一个请求服务器时自动生成一个session 包括sessionid用来唯一标识这个服务器对象 就好比身份证一样
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//为啥能够确定session是唯一确定的
                //因为传入参数是唯一确定的 所以request也是唯一确定的 对应的session也是唯一确定的
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		HttpSession session = req.getSession();
		//从session中获取用户对象
                //session里面为啥会包含admin是自己放进去的 还是自带的
                //理论上session可以存放任何东西 但是不建议都放进去 会严重降低速度
                //一般存放与用户信息相关的:1.身份信息 登录状态 2,用户权限 3.其他通用数据（比如购物车)
		Object obj =  session.getAttribute("admin");
                //既然object类型能够表示一切类型 为啥不能全用object类型
                //通过object引用实现的参数任意化 缺点是要做显式的强制类型转换 并且编译器不提示错误
                //泛型又弥补了这个缺陷 做类型安全检车 并且所有的强制转换都是自动的隐式的
                
                //instanceof后面是类 前面是数据对象
                //instanceof有意义吗 直接看引用类型不就行了
                //对于人来看这是事实
                //但是对于机器来说 他不能看 只能比对 可以理解为这个对象的类型是不是Admin
                //你注重于是不是 而机器if的语义是"是的话干什么"
		if(obj!=null && obj instanceof Admin){
			//用户为管理员,放行
                        //filterchain有什么用
                        //filterchain的意思是不止一个 有filter1,filter2,filter3,filter4....
			chain.doFilter(request, response);
			
		}else{
                    //response中包括了重定向的功能
                    //response还包括了哪些东西
                    //write书写
                    //redirect重定位
                    //clear清空等等
			resp.sendRedirect(req.getContextPath()+"/adminLogin.jsp");
		}
		
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
}