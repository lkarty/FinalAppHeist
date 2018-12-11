package com.finalproject.ArtHeistApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.finalproject.ArtHeistApp.entities.Dummy;

public interface DummyRepo extends JpaRepository <Dummy, Integer> {

}
