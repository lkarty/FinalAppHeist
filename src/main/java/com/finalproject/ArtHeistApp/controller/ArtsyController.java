package com.finalproject.ArtHeistApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.ArtHeistApp.entities.ArtResults;
import com.finalproject.ArtHeistApp.entities.ArtsyService;
import com.finalproject.ArtHeistApp.entities.Artworks;


@Controller
public class ArtsyController {

	@Autowired
	ArtsyService artsyService;

	//String nextPage;

	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}

	@RequestMapping("/result")
	public ModelAndView artLists() {
		// First we must exchange that code for an access token.
		String accessToken = artsyService.getArtsyAccessToken();

		ArtResults allThingsArt = artsyService.getArtFromArtsyApi(accessToken);
		List<Artworks> artList = allThingsArt.getEmbedded().getArtworks();
		ModelAndView mv = new ModelAndView("results", "art", artList); //artList
		//System.out.println();
		//nextPage = allThingsArt.getLink().getNext().getRef();
		//System.out.println(nextPage);
		// mv.addObject("nextPage", allThingsArt.getLink().getNext());
		return mv;
	}

//	@RequestMapping("/love")
//	public ModelAndView loveCalc(@RequestParam("width") Integer artw, @RequestParam("height") Integer arth) {
//
//		// Create a RestTemplate
//		RestTemplate rt = new RestTemplate();
//
//		// Add any necessary headers per the documentation
//		HttpHeaders headers = new HttpHeaders();
////		headers.add("X-Mashape-Key", clientSecret);
////		headers.add("Accept", MediaType.APPLICATION_JSON_VALUE);
//
//		// we can alternatively add this right hand side in the exchange method
//		// like in the SwapiController example
//		HttpEntity<String> entity = new HttpEntity<>("parameters", headers);
//		String url = "https://love-calculator.p.mashape.com/getPercentage?width=" + artw + "&height=" + arth;
//
//		// Making the call to the API
//		ResponseEntity<Artworks> response = rt.exchange(url, HttpMethod.GET, entity, Artworks.class);
//		System.out.println(response.getBody());
//		
//		Artworks loveMatch = response.getBody();
//
//		return new ModelAndView("love-interest", "love", loveMatch);
//	}

}