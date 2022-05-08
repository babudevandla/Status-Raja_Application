package com.statusraja.controller;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.statusraja.ringtone.RingtoneService;
import com.statusraja.vo.RatingAndDownload;
import com.statusraja.webdav.service.WebDavService;

@Controller
public class CommonController {

	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);

	@Autowired
	RingtoneService ringtoneService;
	
	@Autowired
	WebDavService webDavService;
	
	@GetMapping("/downloadfile/{srid}")
	public void downloadFile(@PathVariable Integer srid, @RequestParam String filePath, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Download File!....");
		String[] fileName = filePath.split("/");
		logger.info("download file name  ==> {} ",fileName[1]);
		try {
			RatingAndDownload ratingAndDownload=ringtoneService.getFileDetaillsById(srid);
			Integer downloads=ratingAndDownload.getDownloadcount()+1;
			ratingAndDownload.setDownloadcount(downloads);;
			logger.info("downloads count ::{}",downloads);
			ringtoneService.updateLikes(ratingAndDownload,"download");
			
			InputStream inputStream = webDavService.downloadFile(filePath);
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment;filename=" + fileName[1]);

			FileCopyUtils.copy(inputStream, response.getOutputStream());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
}
