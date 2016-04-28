package com.hk515.SQLHK.dao;

import java.util.List;

import com.hk515.SQLHK.pojo.Users_tbl;;

public interface IUsers_tblDao {
    int deleteByPrimaryKey(String usersTblId);

    int insert(Users_tbl record);

    int insertSelective(Users_tbl record);

    Users_tbl selectByPrimaryKey(String usersTblId);

    int updateByPrimaryKeySelective(Users_tbl record);

    int updateByPrimaryKey(Users_tbl record);
	
	boolean login(Users_tbl user);
	
	List<String> selectDatabaseList(Users_tbl user);
}