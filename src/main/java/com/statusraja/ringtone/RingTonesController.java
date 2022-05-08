package com.statusraja.ringtone;

import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.statusraja.constants.SRConstants;
import com.statusraja.enums.CategoryStatusEnum;
import com.statusraja.service.GenericService;
import com.statusraja.vo.FilterSearchVo;
import com.statusraja.vo.Languages;
import com.statusraja.vo.RatingAndDownload;
import com.statusraja.webdav.service.WebDavService;

@Controller
public class RingTonesController {

	private static final Logger logger = LoggerFactory.getLogger(RingTonesController.class);

	@Autowired
	RingtoneService ringtoneService;

	@Autowired
	WebDavService webDavService;

	@Autowired
	GenericService genericService;
	
	@GetMapping("/ringtones")
	public ModelAndView getRingtonesList(@ModelAttribute FilterSearchVo searchVo) {
		logger.info("all ringtones list!....");
		ModelAndView model = new ModelAndView("tabs/ringtones");
		List<Languages> languagelist=genericService.getLanguageList();
		if(SRConstants.strNotNull.test(searchVo.getLanguage())) {
			Languages language=languagelist.stream().filter(l -> l.getName().trim().equalsIgnoreCase(searchVo.getLanguage())).findFirst().orElse(null);
			searchVo.setLangid(language.getLangid());
		}
		
		List<FileDetailsVo> fileDetailsVos = ringtoneService.getMasterDetailsList(CategoryStatusEnum.RINGTONE.getStatus(),searchVo);
		
		model.addObject("languages", languagelist);
		model.addObject("fileDetailsVos", fileDetailsVos);

		return model;
	}

	@GetMapping("/downloadringtone/{srid}")
	public void downloadRingtone(@PathVariable Integer srid, @RequestParam String filePath, HttpServletRequest request,
			HttpServletResponse response) {
		logger.info("Download Ringtone!....");
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
	
	@PostMapping("/like")
	public @ResponseBody Integer updateLikes(@RequestParam Integer id,@RequestParam String key) {
		Integer likes=null;
		if(id!=null) {
			RatingAndDownload ratingAndDownload=ringtoneService.getFileDetaillsById(id);
			likes=ratingAndDownload.getLikes()+1;
			ratingAndDownload.setLikes(likes);
			logger.info("likes count ::{}",likes);
			ringtoneService.updateLikes(ratingAndDownload,"like");
		}
		return likes;
		
	}

	@GetMapping("/ringtone/{srid}")
	public ModelAndView getRingtone(@PathVariable Integer srid) {
		logger.info("all ringtones list!....");
		ModelAndView model = new ModelAndView("tabs/single_ringtone");
		FileDetailsVo fileDetails = ringtoneService.getFileDetailsById(CategoryStatusEnum.RINGTONE.getStatus(),srid);
		model.addObject("ringtone", fileDetails);

		return model;
	}
}
