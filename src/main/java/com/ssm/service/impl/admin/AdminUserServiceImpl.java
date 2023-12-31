package com.ssm.service.impl.admin;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.ssm.dao.AdminUserMapper;
import com.ssm.po.AdminUser;
import com.ssm.po.AdminUserOV;
import com.ssm.service.inter.admin.AdminUserServiceInter;

public class AdminUserServiceImpl implements AdminUserServiceInter{
	
	@Autowired //自动注入
	private AdminUserMapper adminMapper;

	@Override //管理员登录
	public boolean adminLogin(AdminUser adminUser) throws Exception {
		boolean blo = false;
		AdminUser user = adminMapper.adminLogin(adminUser);
		if(user!=null) {
			blo = true;
			String jsonUser = JSONObject.toJSONString(user);
			System.out.println(jsonUser);
			Cookie cookies = new Cookie("admin-users", java.net.URLEncoder.encode(jsonUser, "UTF-8"));
			HttpServletResponse response =((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getResponse();
			response.addCookie(cookies);
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
			request.getSession().setAttribute("admin-users", jsonUser);
		}else {
			return false;
		}
		return blo;
	}

	@Override
	public void LoginOut(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session =  request.getSession();
		session.removeAttribute("admin-users");//删除session中的用户信息
		session.invalidate();
		 Cookie[] cookies = request.getCookies();//获取cookie数组
		 //遍历cookie数组
			for(Cookie ck : cookies) {
				ck.setMaxAge(0);
				response.addCookie(ck);
			}
	}

	@Override
	public String GetAdmins() throws Exception { //查询所有管理员
		List<AdminUserOV> lists = adminMapper.GetAdmin();
		return JSON.toJSONString(lists);
	}

}
