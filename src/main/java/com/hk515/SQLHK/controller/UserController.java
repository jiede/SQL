package com.hk515.SQLHK.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk515.SQLHK.pojo.Users_tbl;
import com.hk515.SQLHK.service.*;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import com.wordnik.swagger.annotations.ApiResponses;
import com.wordnik.swagger.annotations.ApiResponse;

import org.apache.log4j.Logger;

@Controller
@RequestMapping("/user")
public class UserController {
	private static Logger logger = Logger.getLogger(UserController.class);
	@Resource
	private IUsers_tblService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String toIndex(HttpServletRequest request, Model model) {
		/*
		 * int userId = Integer.parseInt(request.getParameter("id")); User user
		 * = this.userService.getUserById(userId); user.setUserName(
		 * "select * from Function_tbl "); List<HashMap<String, Object>>
		 * regionMap = this.userService.selectSQL(user);
		 * 
		 * model.addAttribute("user", user);
		 * logger.info(JSON.toJSONString(regionMap));
		 */
		return "View/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	@ApiOperation(value = "根据用户名获取用户对象", httpMethod = "POST", response = Users_tbl.class, notes = "根据用户名获取用户对象")
	@ApiResponses(value = { @ApiResponse(code = 400, message = "Invalid ID supplied"),
			@ApiResponse(code = 404, message = "Pet not found") })
	public Users_tbl tologin(@ApiParam(required = true, name = "useruame", value = "用户名") @RequestParam String useruame,
			@ApiParam(required = true, name = "password", value = "用户名") @RequestParam String password)
					throws Exception {
		String userName = useruame;
		String Password = password;
		Users_tbl user = new Users_tbl();
		user.setLoginname(userName);
		user.setPassword(password);
		/*
		 * ModelAndView view = null; if (userService.login(user)) {
		 * request.getSession().setAttribute("user", user);
		 * response.sendRedirect("/general/Query"); } else {
		 * response.sendRedirect("/user/login"); // view = new
		 * ModelAndView("/View/login"); }
		 */
		return user;
	}

}
