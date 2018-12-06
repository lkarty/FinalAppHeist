package com.finalproject.ArtHeistApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.ArtHeistApp.entities.Shopper;
import com.finalproject.ArtHeistApp.repository.ShopperRepository;






@Controller
public class ShopperController {
@Autowired 
ShopperRepository s;

	
	
@RequestMapping("/addshopper")
public ModelAndView addNewShopper(@RequestParam("shoppername") String shoppername) {
Shopper p1= new Shopper(shoppername);
s.save(p1);
return new ModelAndView("redirect:/heisterResults");
}

//@RequestMapping ("/heisterResults")
//public ModelAndView heisterResults() {
//	return new ModelAndView ("heisterResults", "joblist", "hello world");
//	
//}
	
	@RequestMapping ("/heisterResults")
	public ModelAndView index() {
	ModelAndView mv= new ModelAndView("heisterResults");
	s.findAll();
	mv.addObject("joblist", s.findAll());
	return mv;	

//
//			@RequestMapping ("/")
//			public ModelAndView index() {
//			ModelAndView mv= new ModelAndView("index");
//			System.out.println();
//			repo.findAll();
//			mv.addObject("orderslist", repo.findAll());
//					return mv;

}
}
