package com.hk515.SQLHK.dao;

import java.util.List;
import java.util.HashMap;

public interface IGeneralDao {
	List<HashMap<String, Object>> selectSQL(HashMap para);
}