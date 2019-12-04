package com.airport.AirportManagementSystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.airport.AirportManagementSystem.model.Plane;


@Repository
public interface PlaneDAO extends CrudRepository<Plane, Integer> {
	public Plane findByPlaneId(int planeId);

	public List<Plane> findAll();
    
	
	@Query(
			  value = "SELECT * From Planes where hangarId =0", 
			  nativeQuery = true)
	public List<Plane> viewAvailablePlanes();
    
	@Query( "update Plane set hangarId =:hangarId where planeId =:planeId")
	public Plane allotHangartoPlane(@Param("planeId")int planeId, @Param("hangarId")int hangarId);
	
	
	
	
}
