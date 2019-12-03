package com.airport.AirportManagementSystem.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.airport.AirportManagementSystem.model.Admin;
import com.airport.AirportManagementSystem.model.Hangar;
import com.airport.AirportManagementSystem.model.HangarStatus;
import com.airport.AirportManagementSystem.model.Manager;
import com.airport.AirportManagementSystem.model.Pilot;
import com.airport.AirportManagementSystem.model.Plane;

@Service
public interface AdminService {

	// Admin login
	// create Admin
	public Admin addAdmin(Admin admin);

	// read Manager
	public List<Manager> viewManagers();

	//update Manager
	public Manager updateManager(Manager manager);

	// delete Manager
	public Manager deleteManager(int managerId);

	// create Pilot
	public Pilot addPilot(Pilot pilot);

	// read pilot
	public List<Pilot> viewPilots();

	//update pilot
	public Pilot updatePilot(Pilot pilot);

	//delete pilot
	public Pilot deletePilot(int pilotId);

	// create plane
	public Plane addPlane(Plane planes);

	// read Planes
	public List<Plane> viewPlanes();

	//update planes
	public Plane updatePlane(Plane planes);

	//delete planes
	public Plane deletePlane(int planeId);

	// create Hanger
	public Hangar addHangar(Hangar hangar);

	// read Hanger
	public List<Hangar> viewHangars();

	//update Hanger
	public Hangar updateHangar(Hangar hangar);

	//delete Hanger
	public Hangar deleteHangar(int hangarId);

	// create Hanger status
	public HangarStatus addHangarStatus(HangarStatus hangarStatus);

	// read Hanger status
	public List<HangarStatus> viewHangarStatus();

	//update Hanger status
	public HangarStatus updateHangarStatus(HangarStatus hangarStatus);

	//delete Hanger status
	public HangarStatus deleteHangarStatus(int hangarId);

	public Manager getManagerDetailsByManagerId(int managerId);

	public Pilot getPilotDetailsByPilotId(int pilotId);

	public Hangar getHangarDetailsByHangarId(int hangarId);

	public Plane getPlaneDetailsByPlaneId(int planeId);

	public Pilot getPilotDetailsByPlaneId(int planeId);

	public Hangar getHangarDetailsByPlaneId(int planeId);
	//public Pilot updateManager(Pilot pilot);

	public int checkAdminLogin(String emailId, String password);

	}



