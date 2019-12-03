package com.airport.AirportManagementSystem.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airport.AirportManagementSystem.dao.AdminDAO;
import com.airport.AirportManagementSystem.dao.HangarDAO;
import com.airport.AirportManagementSystem.dao.HangarStatusDAO;
import com.airport.AirportManagementSystem.dao.ManagerDAO;
import com.airport.AirportManagementSystem.dao.PilotDAO;
import com.airport.AirportManagementSystem.dao.PlaneDAO;
import com.airport.AirportManagementSystem.model.Admin;
import com.airport.AirportManagementSystem.model.Hangar;
import com.airport.AirportManagementSystem.model.HangarStatus;
import com.airport.AirportManagementSystem.model.Manager;
import com.airport.AirportManagementSystem.model.Pilot;
import com.airport.AirportManagementSystem.model.Plane;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminDAO adminDAO;
    @Autowired
    ManagerDAO managerDAO;
    @Autowired
    PilotDAO pilotDAO;
    @Autowired
    PlaneDAO planeDAO;
    @Autowired
    HangarDAO hangarDAO;
    @Autowired
    HangarStatusDAO hangarStatusDAO;
@Transactional @Override
public Admin addAdmin(Admin admin) {
return this.adminDAO.save(admin);
}

public Manager getManagerDetailsByManagerId(int managerId) {
return this.managerDAO.findByManagerId(managerId);
}


@Transactional @Override
public List<Manager> viewManagers() {
return this.managerDAO.findAll();
}

@Transactional @Override
public Manager updateManager(Manager manager) {
return this.managerDAO.save(manager);
}

@Transactional @Override
public Manager deleteManager(int managerId) {
Manager manager=managerDAO.findByManagerId(managerId);
this.managerDAO.deleteById(managerId);
return manager;
}

@Transactional @Override
public Pilot addPilot(Pilot pilot) {
return this.pilotDAO.save(pilot);
}

@Transactional @Override
public List<Pilot> viewPilots() {
return this.pilotDAO.findAll();
}

public Pilot getPilotDetailsByPlaneId(int planeId)
{
return this.pilotDAO.findPilotDetailsByPlaneId(planeId);
}

@Transactional @Override
public Pilot updatePilot(Pilot pilot) {
return this.pilotDAO.save(pilot);
}

@Transactional @Override
public Pilot deletePilot(int pilotId) {
Pilot pilot=pilotDAO.findByPilotId(pilotId);
this.pilotDAO.deleteById(pilotId);
return pilot;
}

@Transactional @Override
public Plane addPlane(Plane planes) {
return this.planeDAO.save(planes);
}

@Transactional @Override
public List<Plane> viewPlanes() {
	
return this.planeDAO.findAll();
}

@Transactional @Override
public Plane updatePlane(Plane planes) {
return this.planeDAO.save(planes);
}

@Transactional @Override
public Plane deletePlane(int planeId) {
Plane plane=planeDAO.findByPlaneId(planeId);
this.planeDAO.deleteById(planeId);
return plane;
}

@Transactional @Override
public Hangar addHangar(Hangar hangar) {
return this.hangarDAO.save(hangar);
}

@Transactional @Override
public List<Hangar> viewHangars() {
return this.hangarDAO.findAll();
}

@Transactional @Override
public Hangar updateHangar(Hangar hangar) {
return this.hangarDAO.save(hangar);
}

@Transactional @Override
public Hangar deleteHangar(int hangarId) {
Hangar hangar=hangarDAO.findByHangarId(hangarId);
this.hangarDAO.deleteById(hangarId);
return hangar;
}
   

public Hangar getHangarDetailsByPlaneId(int planeId)
{
return this.hangarDAO.findHangarDetailsByPlaneId(planeId);
}

@Transactional @Override
public HangarStatus addHangarStatus(HangarStatus hangarStatus) {
return this.hangarStatusDAO.save(hangarStatus);
}

@Transactional @Override
public List<HangarStatus> viewHangarStatus() {
return this.hangarStatusDAO.findAll();
}

@Transactional @Override
public HangarStatus updateHangarStatus(HangarStatus hangarStatus) {
return this.hangarStatusDAO.save(hangarStatus);
}

@Transactional @Override
public HangarStatus deleteHangarStatus(int hangarId) {
HangarStatus hangarStatus=hangarStatusDAO.findByHangarId(hangarId);
this.hangarStatusDAO.deleteById(hangarId);
return hangarStatus;
}

public int checkAdminLogin(String username,String password)
{
Admin admin= this.adminDAO.checkAdminLogin(username);
if(admin!=null)
{
if(admin.getEmailId().equals(username) && admin.getPassword().equals(password))
{
return 1;
}
}
return 0;
}




@Transactional
@Override
public Pilot getPilotDetailsByPilotId(int pilotId) {
return this.pilotDAO.findByPilotId(pilotId);
}

@Transactional @Override
public Hangar getHangarDetailsByHangarId(int hangarId) {
return this.hangarDAO.findByHangarId(hangarId);
}

@Transactional @Override
public Plane getPlaneDetailsByPlaneId(int planeId) {
return this.planeDAO.findByPlaneId(planeId);
}

}


