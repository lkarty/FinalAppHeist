package com.finalproject.ArtHeistApp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.finalproject.ArtHeistApp.entities.Shopper;

public interface ShopperRepository extends JpaRepository<Shopper, Integer> {

	List<Shopper> findByShoppername(String shoppername);

}
