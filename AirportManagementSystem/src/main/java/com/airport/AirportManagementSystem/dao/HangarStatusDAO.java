package com.airport.AirportManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;


import com.airport.AirportManagementSystem.model.HangarStatus;
@Repository
public interface HangarStatusDAO extends CrudRepository<HangarStatus, Integer> {
	public List<HangarStatus> findAll();
	public HangarStatus findByHangarId(int hangarId);
	
	@Query( "From HangarStatus where status =:A")
	public List<HangarStatus> viewAvailableHangars();
	
	
	
}
