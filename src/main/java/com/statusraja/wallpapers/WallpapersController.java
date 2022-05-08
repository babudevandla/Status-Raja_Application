package com.statusraja.wallpapers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.statusraja.enums.CategoryStatusEnum;
import com.statusraja.ringtone.FileDetailsVo;
import com.statusraja.ringtone.RingtoneService;
import com.statusraja.service.GenericService;
import com.statusraja.vo.FilterSearchVo;
import com.statusraja.vo.Languages;

@Controller
public class WallpapersController {


	private static final Logger logger = LoggerFactory.getLogger(WallpapersController.class);
	
	@Autowired
	RingtoneService ringtoneService;
	
	@Autowired
	GenericService genericService;
	
	@GetMapping("/wallpapers")
	public ModelAndView getWallpapers(@ModelAttribute FilterSearchVo searchVo) {
		logger.info("get all wallpapers!*********");
		ModelAndView model = new ModelAndView("tabs/hd_wallpapers");
		List<FileDetailsVo> fileDetailsVos = ringtoneService.getMasterDetailsList(CategoryStatusEnum.HD_WALLPAPERS.getStatus(),searchVo);
		List<Languages> languages=genericService.getLanguageList();
		model.addObject("languages", languages);
		model.addObject("fileDetailsVos", fileDetailsVos);

		return model;
	}
	
	@GetMapping("/wallpapers/{type}")
	public ModelAndView getWallpapersByType(@PathVariable String type, @ModelAttribute FilterSearchVo searchVo) {
		logger.info("all text status list!....");
		ModelAndView model = new ModelAndView("tabs/wallpapers_type");
		String wallpapertype="";
		if(type.equalsIgnoreCase("hd")) {
			wallpapertype=CategoryStatusEnum.HD_WALLPAPERS.getStatus();
		}else{
			wallpapertype=CategoryStatusEnum.MOBILE_WALLPAPERS.getStatus();
		}
		List<FileDetailsVo> fileDetailsVos = ringtoneService.getMasterDetailsList(wallpapertype,searchVo);
		List<Languages> languages=genericService.getLanguageList();
		model.addObject("languages", languages);
		model.addObject("fileDetailsVos", fileDetailsVos);
		model.addObject("type", type);
		return model;
	}
	
	@GetMapping("/wallpaper/{srid}")
	public ModelAndView getWallpaperById(@PathVariable Integer srid) {
		logger.info("getWallpaperById!....");
		ModelAndView model = new ModelAndView("tabs/single_wallpapers");
		FileDetailsVo fileDetails = ringtoneService.getFileDetailsById(null,srid);
		model.addObject("fileDetails", fileDetails);

		return model;
	}
	
}
