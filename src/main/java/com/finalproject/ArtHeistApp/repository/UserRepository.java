package com.finalproject.ArtHeistApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.finalproject.ArtHeistApp.entities.User;


public interface UserRepository extends JpaRepository<User,Integer>{

	//@Query("select u from User u where u.email = :email ")
	
	User findByEmail(String email);

}
