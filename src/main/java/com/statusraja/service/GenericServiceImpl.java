package com.statusraja.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.statusraja.mongo.dao.GenericMongoDao;
import com.statusraja.vo.Categories;
import com.statusraja.vo.Languages;

@Service
public class GenericServiceImpl implements GenericService {

	@Autowired
	GenericMongoDao genericMongoDao;

	@Override
	public List<Languages> getLanguageList() {
		return genericMongoDao.getLanguageList();
	}

	@Override
	public List<Categories> getCategories(String type) {
		return genericMongoDao.getCategories(type);
	}
}
