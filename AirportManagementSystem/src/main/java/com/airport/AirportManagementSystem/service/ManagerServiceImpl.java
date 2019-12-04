package com.airport.AirportManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airport.AirportManagementSystem.dao.HangarDAO;
import com.airport.AirportManagementSystem.dao.HangarStatusDAO;
import com.airport.AirportManagementSystem.dao.ManagerDAO;
import com.airport.AirportManagementSystem.dao.PlaneDAO;
import com.airport.AirportManagementSystem.model.Admin;
import com.airport.AirportManagementSystem.model.Hangar;
import com.airport.AirportManagementSystem.model.HangarStatus;
import com.airport.AirportManagementSystem.model.Manager;
import com.airport.AirportManagementSystem.model.Plane;
@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	ManagerDAO managerDAO;
	@Autowired
	PlaneDAO planeDAO;
	@Autowired
	HangarStatusDAO hangarStatusDAO;
	@Autowired 
	HangarDAO hangarDAO;
	@Override
	public List<Plane> viewPlanes() {
		return this.planeDAO.viewAvailablePlanes();
	}

	@Override
	public List<HangarStatus> viewHangarStatus() {
		return this.hangarStatusDAO.viewAvailableHangars();
	}

	@Override
	public Plane allotHangartoPlane(int planeId, int hangarId) {
		return this.planeDAO.allotHangartoPlane(planeId,hangarId);
	}

	@Override
	public Hangar allotPlanetoHangar(int planeId, int hangarId) {
		return this.hangarDAO.allotPlanetoHangar(planeId,hangarId);
	}

	@Override
	public Manager addManager(Manager manager) {
		return this.managerDAO.save(manager);
		
	}

	@Override
	public int checkManagerLogin(String username, String password) {
		Manager manager= this.managerDAO.checkManagerLogin(username);
		if(manager!=null)
		{
			if(manager.getEmailId().equals(username) && manager.getPassword().equals(password))
			{
				return 1;
			}
		}
		return 0;
		
	}

	/*@Override
	public Plane allotHangar(Plane plane, Hangar hangar) {
		return this.planeDAO.allotHangar(plane,hangar);
	}*/

}
