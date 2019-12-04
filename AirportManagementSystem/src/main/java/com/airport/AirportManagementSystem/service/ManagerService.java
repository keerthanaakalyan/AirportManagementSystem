package com.airport.AirportManagementSystem.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.airport.AirportManagementSystem.model.Hangar;
import com.airport.AirportManagementSystem.model.HangarStatus;
import com.airport.AirportManagementSystem.model.Manager;
import com.airport.AirportManagementSystem.model.Plane;
@Service
public interface ManagerService{
	
	public List<Plane> viewPlanes();
	public List<HangarStatus> viewHangarStatus();
	public Plane allotHangartoPlane(int planeId,int hangarId);
	public Hangar allotPlanetoHangar(int planeId,int hangarId);
	public Manager addManager(Manager manager);
	public int checkManagerLogin(String username, String password);

}
