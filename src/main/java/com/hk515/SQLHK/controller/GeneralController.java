package com.hk515.SQLHK.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.hk515.SQLHK.pojo.Users_tbl;
import com.hk515.SQLHK.service.*;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;

import org.apache.log4j.Logger;

@Controller
@RequestMapping("/general")
public class GeneralController {
	private static Logger logger = Logger.getLogger(GeneralController.class);
	@Resource
	private IGeneralService GeneralService;
	@Resource
	private IUsers_tblService userService;

	@RequestMapping(value = "/Query", method = RequestMethod.GET)
	public String toIndex(HttpServletRequest request, Model model) {
		// int userId = Integer.parseInt(request.getParameter("id"));
		// user.setUserName("select * from Function_tbl ");

		Users_tbl user = (Users_tbl) request.getSession().getAttribute("user");
		model.addAttribute("user", user);
		/*
		 * List<String> databaselist = userService.selectDatabaseList(user);
		 * model.addAttribute("databaselist", databaselist);
		 */

		// HashMap<String, Object> data = new HashMap();
		// data.put("pageOffset", 5);
		// data.put("strsql", "select * from Function_tbl ");
		// List<HashMap<String, Object>> regionMap =
		// this.GeneralService.selectSQL(data);
		// model.addAttribute("user", JSON.toJSONString(regionMap));
		// logger.info(JSON.toJSONString(regionMap));
		return "View/Query";
	}

	@RequestMapping(value = "/Query", method = RequestMethod.POST)
	@ResponseBody
	@ApiOperation(value = "strsql", httpMethod = "POST", response = String.class, notes = "SQL")
	public String toQuery(@ApiParam(required = true, name = "strsql", value = "sql") @RequestParam String strsql,
			@ApiParam(required = true, name = "pageOffset", value = "“≥¬Î") @RequestParam int pageOffset) {
		/* String strsql = request.getParameter("strsql"); */
		int intpageOffset = 1000;
		if (pageOffset != 0) {
			intpageOffset = pageOffset;
		}

		// user.setUserName("select * from Function_tbl ");
		List<HashMap<String, Object>> regionMap = new ArrayList<HashMap<String, Object>>();
		HashMap<String, Object> data = new HashMap();
		data.put("pageOffset", pageOffset);
		data.put("strsql", strsql);
		try {
			regionMap = this.GeneralService.selectSQL(data);
			/* model.addAttribute("Querycount", "12"); */
		} catch (Exception e) {
			logger.info(e.getMessage());
			data.put("Result", false);
			data.put("msg", e.getMessage());
			return JSON.toJSONString(data);
		} finally {
			System.out.print("hello");
		}
		return JSON.toJSONString(regionMap);
		// ModelAndView mav = new ModelAndView("View/Query", "Result",
		// regionMap);
		// Iterator iter = data.entrySet().iterator();
		// while (iter.hasNext()) {
		// Map.Entry entry = (Map.Entry) iter.next();
		// Object key = entry.getKey();
		// Object val = entry.getValue();
		// System.out.print("key «" + key);
		// System.out.print("val «" + val);
		// }
		// logger.info(JSON.toJSONString(regionMap));

	}
}
