package com.fss.service;

import java.sql.SQLException;
import java.util.List;

import com.fss.bean.Version;
import com.fss.dao.VersionDao;

public class VersionService {

	public List<Version> findAll(String version) throws SQLException {

		return new VersionDao().findAll(version);

	}

}
