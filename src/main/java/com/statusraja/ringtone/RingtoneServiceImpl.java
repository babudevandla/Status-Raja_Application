package com.statusraja.ringtone;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.statusraja.mongo.dao.GenericMongoDao;
import com.statusraja.vo.FilterSearchVo;
import com.statusraja.vo.RatingAndDownload;

@Service
public class RingtoneServiceImpl implements RingtoneService {

	private static final Logger logger = LoggerFactory.getLogger(RingtoneServiceImpl.class);
	
	
	@Autowired
	GenericMongoDao genericMongoDao;
	
	
	@Override
	public List<FileDetailsVo> getMasterDetailsList(String type, FilterSearchVo searchVo) {
		return genericMongoDao.getMasterDetailsList(type,searchVo);
	}


	@Override
	public void updateLikes(RatingAndDownload ratingAndDownload, String type) {
		genericMongoDao.updateLikes(ratingAndDownload,type);
	}


	@Override
	public RatingAndDownload getFileDetaillsById(Integer id) {
		return genericMongoDao.getFileDetaillsById(id);
	}


	@Override
	public FileDetailsVo getFileDetailsById(String type, Integer srid) {
		return genericMongoDao.getFileDetailsById(type,srid);
	}


	

}
