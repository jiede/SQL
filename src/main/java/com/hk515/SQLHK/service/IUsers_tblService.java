package com.hk515.SQLHK.service;

import java.util.List;

import com.hk515.SQLHK.pojo.Users_tbl;

public interface IUsers_tblService {
	public boolean login(Users_tbl user);

	public List<String> selectDatabaseList(Users_tbl user);
}
