package com.airport.AirportManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.airport.AirportManagementSystem.model.Plane;


@Repository
public interface PlaneDAO extends CrudRepository<Plane, Integer> {
	public Plane findByPlaneId(int planeId);

	public List<Plane> findAll();
    
	
	@Query( "FROM Plane where hangarId= :hangarId")
	public List<Plane> viewAvailablePlanes(@Param("hangarId")int hangarId );
	@Modifying
	@Query( "update Plane set hangarId = :hangarId where planeId =:planeId")
	public int allotHangartoPlane(@Param("planeId")int planeId, @Param("hangarId")int hangarId);
	
	
	
	
}
