package com.finalproject.ArtHeistApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.ArtHeistApp.entities.ArtResults;
import com.finalproject.ArtHeistApp.entities.ArtsyService;
import com.finalproject.ArtHeistApp.entities.Artworks;
import com.finalproject.ArtHeistApp.entities.User;
import com.finalproject.ArtHeistApp.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository u;
	
	@Autowired
	ArtsyService artsyService;
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/shopper")
	public ModelAndView shopperLogin() {
		ModelAndView mv = new ModelAndView("shopper");
		return mv;
	}
	
	@RequestMapping("/result")
	public ModelAndView shopperNew(@RequestParam("email") String email, @RequestParam("type") String type) {
		User user = new User(email, type);
		System.out.println(user);
		String accessToken = artsyService.getArtsyAccessToken();
		ArtResults allThingsArt = artsyService.getArtFromArtsyApi(accessToken);
		List<Artworks> artList = allThingsArt.getEmbedded().getArtworks();
		ModelAndView mv = new ModelAndView("art", "art", artList); //artList
		u.save(user);
		return mv;
	}
	
	@RequestMapping("/joblist")
	public ModelAndView heisterNew(User user) {
		ModelAndView mv = new ModelAndView("heisterResults");
		u.save(user);
		return mv;
	}


}
