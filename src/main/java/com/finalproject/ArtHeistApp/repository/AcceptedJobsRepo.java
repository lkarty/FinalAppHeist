package com.finalproject.ArtHeistApp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.finalproject.ArtHeistApp.entities.Acceptedjobs;

public interface AcceptedJobsRepo extends JpaRepository<Acceptedjobs, Integer> {

	List<Acceptedjobs> findByHeisteremail(String heisteremail);
	List<Acceptedjobs> findByShoppername(String shoppername);
 
}
