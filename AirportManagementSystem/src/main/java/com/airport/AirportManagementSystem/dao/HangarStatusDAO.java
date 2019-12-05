package com.airport.AirportManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.airport.AirportManagementSystem.model.HangarStatus;
@Repository
public interface HangarStatusDAO extends CrudRepository<HangarStatus, Integer> {
	public List<HangarStatus> findAll();
	public HangarStatus findByHangarId(int hangarId);
	@Query( "FrOM HangarStatus where managerId =:managerId and status=:status")
	public List<HangarStatus> viewAvailableHangars(@Param("managerId")int managerId,@Param("status")String status);
	
	
	
}
