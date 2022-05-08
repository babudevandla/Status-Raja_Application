package com.statusraja.controller;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.statusraja.ringtone.FileDetailsVo;
import com.statusraja.ringtone.RingtoneService;
import com.statusraja.vo.FilterSearchVo;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	RingtoneService ringtoneService;
	
	@GetMapping("/")
	public ModelAndView home(@ModelAttribute FilterSearchVo searchVo) {
		logger.info("index page ....");
		ModelAndView model = new ModelAndView("index");
		List<FileDetailsVo> fileDetailsVos = ringtoneService.getMasterDetailsList(null,searchVo);
		List<FileDetailsVo> textStatuslist=fileDetailsVos.stream().filter(data -> "TEXTSTATUS".equalsIgnoreCase(data.getType()))
				  .sorted(Comparator.comparing(FileDetailsVo::getLikes).reversed()).limit(12).collect(Collectors.toList());
		model.addObject("textStatuslist", textStatuslist);

		return model;
	}

	@GetMapping("/contact")
	public ModelAndView contact() {
		logger.info("contact page ....");
		ModelAndView model = new ModelAndView("tabs/contact");
		return model;
	}
	
	@GetMapping("/privacy-policy")
	public ModelAndView privacyPolicy() {
		logger.info("privacy policy ....");
		ModelAndView model = new ModelAndView("tabs/privacy-policy");
		return model;
	}
}
