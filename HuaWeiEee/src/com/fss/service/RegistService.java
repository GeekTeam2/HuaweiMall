package com.fss.service;

import com.fss.bean.User;
import com.fss.dao.RegistDao;

public class RegistService {

	public String regist(User user) throws Exception {
		// TODO Auto-generated method stub

		
		return new RegistDao().regist(user);

	}


}
