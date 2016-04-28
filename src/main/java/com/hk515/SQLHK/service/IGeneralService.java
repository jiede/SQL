package com.hk515.SQLHK.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;
@Repository
public interface IGeneralService {
	public List<HashMap<String, Object>> selectSQL(HashMap para);
}
