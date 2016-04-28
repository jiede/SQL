package com.hk515.SQLHK.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hk515.SQLHK.dao.IUsers_tblDao;
import com.hk515.SQLHK.pojo.Users_tbl;
import com.hk515.SQLHK.service.IUsers_tblService;

@Service("Users_tblService")
public class Users_tblServiceImpl implements IUsers_tblService {
	@Resource
	private IUsers_tblDao Users_tbl;


	public boolean login(Users_tbl user) {
		return this.Users_tbl.login(user);
	}
	
	public List<String> selectDatabaseList(Users_tbl user){
		return this.selectDatabaseList(user);
	}
}
