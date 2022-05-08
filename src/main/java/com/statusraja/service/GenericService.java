package com.statusraja.service;

import java.util.List;

import com.statusraja.vo.Categories;
import com.statusraja.vo.Languages;

public interface GenericService {

	List<Languages> getLanguageList();

	List<Categories> getCategories(String type);

}
