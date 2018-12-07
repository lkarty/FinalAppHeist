package com.finalproject.ArtHeistApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.finalproject.ArtHeistApp.entities.User;


public interface UserRepository extends JpaRepository<User,Integer>{

	@Query("select u from User u where u.email = :email ")
	
	User findByemail( @Param("email") String email);

}
