package com.statusraja.mongo.dao;

import java.util.List;

import com.statusraja.ringtone.FileDetailsVo;
import com.statusraja.vo.Categories;
import com.statusraja.vo.FilterSearchVo;
import com.statusraja.vo.Languages;
import com.statusraja.vo.RatingAndDownload;

public interface GenericMongoDao {

	List<FileDetailsVo> getMasterDetailsList(String type, FilterSearchVo searchVo);

	void updateLikes(RatingAndDownload ratingAndDownload, String type);

	RatingAndDownload getFileDetaillsById(Integer id);

	List<Languages> getLanguageList();

	List<Categories> getCategories(String type);

	FileDetailsVo getFileDetailsById(String type, Integer srid);

}
