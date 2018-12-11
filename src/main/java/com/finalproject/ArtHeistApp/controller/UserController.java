package com.finalproject.ArtHeistApp.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.ArtHeistApp.entities.Acceptedjobs;
import com.finalproject.ArtHeistApp.entities.ArtResults;
import com.finalproject.ArtHeistApp.entities.ArtsyService;
import com.finalproject.ArtHeistApp.entities.Artworks;
import com.finalproject.ArtHeistApp.entities.Shopper;
import com.finalproject.ArtHeistApp.entities.User;

import com.finalproject.ArtHeistApp.repository.AcceptedJobsRepo;
import com.finalproject.ArtHeistApp.repository.ShopperRepository;
import com.finalproject.ArtHeistApp.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository uRepo;

	@Autowired
	ArtsyService artsyService;

	@Autowired
	ShopperRepository s;

	@Autowired
	AcceptedJobsRepo aj;

	private User user;
	private Acceptedjobs heisterJob;

	List<Artworks> artList;

	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}

	@RequestMapping("/shopper")
	public ModelAndView shopperLogin() {
		ModelAndView mv = new ModelAndView("shopper");
		return mv;
	}

	@RequestMapping("/resultz")
	public ModelAndView shopperNew(@RequestParam("email") String email, @RequestParam("utype") String type) {
		artList = listOfArtwork();
		ModelAndView mv = new ModelAndView("art", "art", artList);
		user = new User(email, type);
		uRepo.save(user);
		// System.out.println(test);
		System.out.println(user);

		// artList

		return mv;
	}

	private List<Artworks> listOfArtwork() {
		String accessToken = artsyService.getArtsyAccessToken();
		ArtResults allThingsArt = artsyService.getArtFromArtsyApi(accessToken);
		List<Artworks> artList = allThingsArt.getEmbedded().getArtworks();
		return artList;
	}

	@RequestMapping("/add-job")
	public ModelAndView saveJob(@RequestParam("title") String t, @RequestParam("medium") String m,
			@RequestParam("date") String d, @RequestParam("i") int ind) {
		// at some point you may want to rename this pojo to job
		Shopper shops = new Shopper(t, 80, user.getEmail(), artList.get(ind).getLinks().getImage().getImg());
		System.out.println(ind);
		// String test = artList.get(ind).getLinks().getImage().getImg();
		System.out.println();
		s.save(shops);

		ModelAndView mv = new ModelAndView("TEMPORARYShopperSelection", "test",
				t + ", a stunning   " + m + ", dating back to  " + d);

		return mv;

	}

	// @RequestMapping("/moreart")
	// public ModelAndView moreart(@RequestParam ("email") String email,
	// @RequestParam ("type") String type) {
	//
	// String accessToken = artsyService.getArtsyAccessToken();
	// ArtResults allThingsArt = artsyService.getArtFromArtsyApi(accessToken);
	// List<Artworks> artList = allThingsArt.getEmbedded().getArtworks();
	// ModelAndView mv= new ModelAndView ("art", "art", artList);
	// u.save(user);
	// return mv;

	@RequestMapping("/shopperlistsearch")
	public ModelAndView shopperlist(String shoppername) {
		ModelAndView mv = new ModelAndView("shopperlist");
		mv.addObject("shopperlist", s.findByShoppername(user.getEmail()));
		mv.addObject("bidslist", aj.findByShoppername(user.getEmail()));
		return mv;
	}

	@RequestMapping("/heister")
	public ModelAndView heisterLogin() {
		ModelAndView mv = new ModelAndView("heister");
		return mv;
	}

	@RequestMapping("/availablejobs")
	public ModelAndView heisterNew(@RequestParam("email") String email, @RequestParam("type") String type) {
		user = new User(email, type);
		uRepo.save(user);
		return new ModelAndView("availablejobs", "availablejobs", s.findAll());

	}

	@RequestMapping("/accept")
	public ModelAndView acceptJob(@RequestParam("title") String t, @RequestParam("shoppername") String s,
			@RequestParam("price") int p) {
		// at some point you may want to rename this pojo to job
		heisterJob = new Acceptedjobs(t, s, p, user.getEmail());
		

		ModelAndView mv = new ModelAndView("accept", "accepted", t + " , for   " + s + ". Your bounty is  " + p
				+ " (USD) payable in BitCoin or small, unmarked bills. Be careful heister and remember ");
		// mv.addObject("quote", list.get(rIndex));
		mv.addObject("t", t);
		mv.addObject("s", s);
		mv.addObject("p", p);
		mv.addObject("h", user.getEmail());
		//mv.addObject("b", b);
		return mv;

	}

	@RequestMapping("/quote")
	public ModelAndView quote(@RequestParam("bid") int bid) {
		ArrayList<String> list = new ArrayList<>();
		list.add(
				"Stealing is always wrong, but stealing paintings in an elaborate way is a little like stealing bread to feed your family. It's stealing bread to feed the world's daydreams about becoming an art thief.\r\n"
						+ "\r\n" + "Ben Mathis-Lilley");
		list.add("\r\n"
				+ "He who steals a little steals with the same wish as he who steals much, but with less power.\r\n"
				+ "\r\n" + "Plato");
		list.add("\r\n" + "Stealing things is a glorious occupations, particularly in the art world.     \r\n" + "\r\n"
				+ "Malcolm McLaren");
		list.add("Stealing isn't so easy, often it's hard work, otherwise we'd all be doing it.     \r\n" + "\r\n"
				+ "Elfriede Jelinek");
		list.add("Steal a little and they'll put you in jail, steal a lot and they'll make you king.\r\n" + "\r\n"
				+ "Bob Dylan");
		list.add(
				"If you steal something small you are a petty thief, but if you steal millions you are a gentleman of society.\r\n"
						+ "\r\n" + "Proverb");
		Random rand = new Random();
		int rIndex = rand.nextInt(list.size() - 1);
		ModelAndView mv = new ModelAndView("heisterResults", "quote", list.get(rIndex));
		mv.addObject("success", "Success!");
		heisterJob.setPrice(bid);
		aj.save(heisterJob);
		return mv; 
	}
	//
	// @RequestMapping("/heisterResults")
	// public ModelAndView heisterNew(@RequestParam("email") String email,
	// @RequestParam("type") String type) {
	// User user = new User(email, type);
	// ModelAndView mv = new ModelAndView("heisterResults");
	// u.save(user);
	// return mv;
	// }

	@RequestMapping("/acceptedjobssearch")
	public ModelAndView acceptedlist(String heisteremail) {
		ModelAndView mv = new ModelAndView("acceptedjobsearch");
		mv.addObject("accepted-jobs", aj.findByHeisteremail(user.getEmail()));
		return mv;
	}

}
