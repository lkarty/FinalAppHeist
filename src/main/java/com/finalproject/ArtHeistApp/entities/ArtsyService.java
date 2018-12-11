package com.finalproject.ArtHeistApp.entities;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class ArtsyService {

	// changed this
	@Value("${arsty.key}")
	private String clientSecret;

	/**
	 * Make an HTTP request to Github's server. Get an access token using the
	 * provided code.
	 */
	public String getArtsyAccessToken() {
		// We'll talk more about rest template in the coming days.
		Map<String, String> params = new HashMap<>();
		// params.put("code", code);
		// changes this
		params.put("client_id", "f4f8990b1ade9319c8a9"); // change this!
		params.put("client_secret", clientSecret);
		RestTemplate rest = new RestTemplate();
		@SuppressWarnings("unchecked")
		// changed this
		Map<String, String> response = rest.postForObject("https://api.artsy.net/api/tokens/xapp_token", params,
				Map.class);
		//System.out.println(response);
		return response.get("token");
	}

	/**
	 * Make an HTTP request to Artsy's server. Use the access token to get the user
	 * details.
	 */
	public ArtResults getArtFromArtsyApi(String accessToken) {
		
		RestTemplate rest = new RestTemplate();
		// Add header info needed by ArtsyAPI
		HttpHeaders header = new HttpHeaders();
		header.add("X-Xapp-Token", accessToken);
		String uri = "https://api.artsy.net/api/artworks?size=10"; // can specify how many a user wants to search for :)
		ResponseEntity<ArtResults> response = rest.exchange(uri, HttpMethod.GET, new HttpEntity<String>(header), ArtResults.class);
		System.out.println("test: " + response.getBody());
		return response.getBody();
	}

}