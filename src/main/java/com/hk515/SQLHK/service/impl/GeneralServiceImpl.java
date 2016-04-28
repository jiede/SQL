package com.hk515.SQLHK.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hk515.SQLHK.dao.IGeneralDao;
import com.hk515.SQLHK.service.*;


@Service("generalService")
public class GeneralServiceImpl implements IGeneralService {
	@Resource
	private IGeneralDao GeneralDao;

	public List<HashMap<String, Object>> selectSQL(HashMap para) {
		// TODO Auto-generated method stub
		return this.GeneralDao.selectSQL(para);
	}
}
