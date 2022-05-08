package com.statusraja.webdav.service;

import java.io.IOException;
import java.io.InputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.github.sardine.Sardine;
import com.github.sardine.SardineFactory;
import com.statusraja.constants.WebDavServerConstant;
import com.statusraja.ringtone.RingTonesController;
import com.statusraja.utils.FilePathVariables;

@Service
public class WebDavServiceImpl implements WebDavService{

	private static final Logger logger = LoggerFactory.getLogger(WebDavServiceImpl.class);
	
	static Sardine sardine = SardineFactory.begin();
	
	@Override
	public InputStream downloadFile(String filePath) {
		StringBuilder directoryPath=new StringBuilder(WebDavServerConstant.WEBDAV_SERVER_URL);
		directoryPath.append(FilePathVariables.FLASH).append(filePath);
		logger.info("file path directory:::{ } ",directoryPath);
		InputStream inputStream=null;
		try {
			inputStream =sardine.get(directoryPath.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return inputStream;
	}

}
