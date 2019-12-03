package com.airport.AirportManagementSystem.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.airport.AirportManagementSystem.model.Admin;
import com.airport.AirportManagementSystem.model.Hangar;
import com.airport.AirportManagementSystem.model.Manager;
import com.airport.AirportManagementSystem.model.Pilot;
import com.airport.AirportManagementSystem.model.Plane;
import com.airport.AirportManagementSystem.service.AdminService;

@Controller
@Validated
public class AdminController {

@Autowired
AdminService adminService;

//admin
   //to get admin model and send
@RequestMapping("/toRegisterAdmin")
   public String register(Model model)
   {
model.addAttribute("admin",new Admin());
return "/registerAdminForm";
   }

//to register admin and redirect to success page
@RequestMapping(value="/registerAdmin",method=RequestMethod.POST)
public String addAdmin (@Valid @ModelAttribute("admin")Admin admin,BindingResult result, Model addAdminModel)
{

 Admin newAdmin = adminService.addAdmin(admin);

 addAdminModel.addAttribute("addedAdmin", newAdmin);
 if(result.hasErrors()){
   return "failure";
 }
 
 return "registerAdminSuccess";
}
@RequestMapping("/LoginAdmin")
public String loginAdmin(Model model)
{
model.addAttribute("loginBean",new Admin());
return "loginAdmin";
}
@RequestMapping("/CheckLoginAdmin")
public String checkloginAdmin( @ModelAttribute("loginBean") Admin admin)
{
	 
	 
    
    	 int check = adminService.checkAdminLogin(admin.getEmailId(),admin.getPassword());
    	 if(check==1)
     return "Admin";
    	 return "failure";

}
@RequestMapping("/toaddPlane")
public String getPlane(Model model)
{
model.addAttribute("plane",new Plane());
return "AddPlane";
}
//to add plane details and redirect to success page
@RequestMapping(value="/addPlane",method=RequestMethod.POST)
public String addPlane(@ModelAttribute("plane")Plane plane,Model addPlaneModel )
{

Plane newPlane = adminService.addPlane(plane);

addPlaneModel.addAttribute("addedPlane", newPlane);
return "/addPlaneSuccess";
}
//update
//to get plane id from jsp page to update
@RequestMapping("/toGetPlaneId")
public String getPlaneId2()
{
return "/getPlaneId";
}
//to display the details of plane for given plane id(update)
@RequestMapping(value="/getDetailsOfPlane",method=RequestMethod.POST)
public String getDetailsByPlaneId(@RequestParam("planeId") int planeId,Model model)
{

Plane plane=adminService.getPlaneDetailsByPlaneId(planeId);
model.addAttribute("planeDetails",plane);
return "/updatePlaneForm";
}

//to update plane details and redirect to success page
@RequestMapping(value="/updatePlane",method=RequestMethod.POST)
public String updatPlane(@ModelAttribute("planeDetails")Plane plane,Model updatePlaneModel )
{

Plane newPlane=adminService.updatePlane(plane);
updatePlaneModel.addAttribute("updatedPlane", newPlane);
return "/updatePlaneSuccess";
}
//view all
//to view list of planes
@RequestMapping("/viewPlanes")
public String viewPlanes(Model viewPlanesModel)
{
List<Plane> planes=new ArrayList<Plane>();
planes=adminService.viewPlanes();
viewPlanesModel.addAttribute("planesList",planes);
return "/viewPlanesSuccess";
}
/*//manager
  //view all
   //to view the list of managers
@RequestMapping("/viewManagers")
public String viewManagers(Model viewManagersModel)
{
List<Manager> managers=new ArrayList<Manager>();
managers=adminService.viewManagers();
viewManagersModel.addAttribute("managersList",managers);
return "/viewManagersSuccess";
}
   //update
//to get manager id from jsp page to update
@RequestMapping("/toGetManagerId")
   public String getManagerId()
   {
return "/getManagerId";
   }
//to display the details of manager for given manager id(update)
@RequestMapping(value="/getDetailsOfManager",method=RequestMethod.POST)
public String getDetailsByManagerId(@RequestParam("managerId") int managerId,Model model)
{
   
  Manager manager=adminService.getManagerDetailsByManagerId(managerId);
  model.addAttribute("managerDetails",manager);
return "/updateManagerForm";
}

//to update manager details and redirect to success page
@RequestMapping(value="/updateManager",method=RequestMethod.POST)
public String updateManager(@ModelAttribute("update")Manager manager)
{

Manager newManager=adminService.updateManager(manager);
Model updateManagerModel = null;
updateManagerModel.addAttribute("updatedManager", newManager);
return "/updateManagerSuccess";
}
   //delete
//(call getManagerId)
//to get manager id from jsp page to delete
@RequestMapping("/toGetManagerId")
   public String getManagerId()
   {
return "/getManagerId";
   }
//to delete manager details and redirect to success page
@RequestMapping(value="/deleteManager",method=RequestMethod.POST)
public String deleteManager(@RequestParam("managerId") int managerId,Model model)
{

Manager newManager=adminService.deleteManager(managerId);
Model deleteManagerModel = null;
deleteManagerModel.addAttribute("deletedManager", newManager);
return "/deleteManagerSuccess";
}

//pilot
 
   //add pilot
//to get pilot details
@RequestMapping("/toaddPilot")
   public String getPilot(Model model)
   {
model.addAttribute("pilot",new Pilot());
return "/getPilotDetails";
   }

//to add pilot details and redirect to success page
@RequestMapping(value="/addPilot",method=RequestMethod.POST)
public String addPilot(@ModelAttribute("pilot")Pilot pilot,Model addPilotModel)
{

 Pilot newPilot = adminService.addPilot(pilot);
 
 addPilotModel.addAttribute("addedPilot", newPilot);
return "/addPilotSuccess";
}
  //view all
//to view list of pilots
@RequestMapping("/viewPilots")
public String viewPilots(Model viewPilotsModel)
{
List<Pilot> pilots=new ArrayList<Pilot>();
pilots=adminService.viewPilots();
viewPilotsModel.addAttribute("pilotsList",pilots);
return "/viewPilotsSuccess";
}
  //view pilot details by plane id
 //to get plane id from jsp page to view pilot details
@RequestMapping("/toGetPlaneId")
   public String getPilotId()
   {
return "/getPilotId";
   }
   //to display the details of pilot for given plane id
@RequestMapping(value="/getDetailsOfPilot",method=RequestMethod.POST)
public String getPilotDetailsByPlaneId(@RequestParam("planeId") int planeId,Model model)
{
  Pilot pilot=adminService.getPilotDetailsByPlaneId(planeId);
  model.addAttribute("pilotDetails",pilot);
return "/viewPilotDetailsByPlaneId";
}
  //update ( call getPilotId)
//to get pilot id from jsp page to update
@RequestMapping("/toGetPilotId")
   public String getPilotId()
   {
return "/getPilotId";
   }
//to display the details of pilot for given pilot id(update)
@RequestMapping(value="/getDetailsOfPilot",method=RequestMethod.POST)
public String getDetailsByPilotId(@RequestParam("pilotId") int pilotId,Model model)
{
   
  Pilot pilot=adminService.getPilotDetailsByPilotId(pilotId);
  model.addAttribute("pilotDetails",pilot);
return "/updatePilotForm";
}

//to update manager details and redirect to success page
@RequestMapping(value="/updatePilot",method=RequestMethod.POST)
public String updatePilot(@ModelAttribute("update")Pilot pilot)
{

Pilot newPilot=adminService.updatePilot(pilot);
Model updatePilotModel = null;
updatePilotModel.addAttribute("updatedPilot", newPilot);
return "/updatePilotSuccess";
}
  //delete
//(call toGetPilotId)
//to get pilot id from jsp page to delete
@RequestMapping("/toGetPilotId")
   public String getPilotId()
   {
return "/getPilotId";
   }
//to delete pilot details and redirect to success page
@RequestMapping(value="/deletePilot",method=RequestMethod.POST)
public String deletePilot(@RequestParam("pilotId") int pilotId,Model model)
{

Pilot newPilot=adminService.deletePilot(pilotId);
Model deletePilotModel = null;
deletePilotModel.addAttribute("deletedPilot", newPilot);
return "/deletePilotSuccess";
}

//plane
  //add plane
  //to get plane details



  //view all
//to view list of planes
@RequestMapping("/viewPlanes")
public String viewPlanes(Model viewPlanesModel)
{
List<Plane> planes=new ArrayList<Plane>();
planes=adminService.viewPlanes();
viewPlanesModel.addAttribute("planesList",planes);
return "/viewPlanesSuccess";
}

  
 //delete
//(call toGetPlaneId)
//to get pilot id from jsp page to delete
@RequestMapping("/toGetPilotId")
   public String getPilotId()
   {
return "/getPilotId";
   }
//to delete plane details and redirect to success page
@RequestMapping(value="/deletePlane",method=RequestMethod.POST)
public String deletePlane(@RequestParam("planeId") int planeId,Model model)
{

Plane newPilot=adminService.deletePlane(planeId);
Model deletePlaneModel = null;
deletePlaneModel.addAttribute("deletedPlane", newPilot);
return "/deletePlaneSuccess";
}



   
//hangar
//add

  //to get hangar details
@RequestMapping("/toaddHangar")
   public String add(Model model)
   {
model.addAttribute("hangar",new Hangar());
return "/getHangarDetails";
   }

//to add plane details and redirect to success page
@RequestMapping(value="/addPlane",method=RequestMethod.POST)
public String addHangar(@ModelAttribute("hangar")Hangar hangar)
{

 Hangar newHangar = adminService.addHangar(hangar);
 Model addHangarModel = null;
 addHangarModel.addAttribute("addedHangar", newHangar);
return "/addHangarSuccess";
}
//view all
//to view list of planes
@RequestMapping("/viewHangars")
public String viewHangars(Model viewHangarsModel)
{
List<Hangar> hangars=new ArrayList<Hangar>();
hangars=adminService.viewHangars();
viewHangarsModel.addAttribute("hangarsList",hangars);
return "/viewHangarsSuccess";
}

//update
   //to get plane id from jsp page to update
@RequestMapping("/toGetHangarId")
   public String getHangarId()
   {
return "/getHangarId";
   }
//to display the details of plane for given plane id(update)
@RequestMapping(value="/getDetailsOfHangar",method=RequestMethod.POST)
public String getDetailsByHangarId(@RequestParam("hangarId") int hangarId,Model model)
{
   
Hangar hangar=adminService.getHangarDetailsByHangarId(hangarId);
  model.addAttribute("planeDetails",hangar);
return "/updateHangarForm";
}

//to update plane details and redirect to success page
@RequestMapping(value="/updateHangar",method=RequestMethod.POST)
public String updatHangar(@ModelAttribute("update")Hangar hangar)
{

Hangar newHangar=adminService.updateHangar(hangar);
Model updateHangarModel = null;
updateHangarModel.addAttribute("updatedHangar", newHangar);
return "/updateHangarSuccess";
}
//delete
//(call toGetHangarId)
//to get hangar id from jsp page to delete
@RequestMapping("/toGetPilotId")
   public String getPilotId()
   {
return "/getPilotId";
   }
//to delete plane details and redirect to success page
@RequestMapping(value="/deleteHangar",method=RequestMethod.POST)
public String deleteHangar(@RequestParam("hangarId") int hangarId,Model model)
{

Hangar newHangar=adminService.deleteHangar(hangarId);
Model deleteHangarModel = null;
deleteHangarModel.addAttribute("deletedHangar", newHangar);
return "/deleteHangarSuccess";
}
//(call get plane id)

//to get plane id from jsp page to view plane details
@RequestMapping("/toGetPlaneId")
   public String getPlaneId()
   {
return "/getPlaneId";
   }

//to display the details of pilot for given plane id
@RequestMapping(value="/getDetailsOfHangar",method=RequestMethod.POST)
public String getHangarDetailsByPlaneId(@RequestParam("planeId") int planeId,Model model)
{
  Hangar hangar=adminService.getHangarDetailsByPlaneId(planeId);
  model.addAttribute("HangarDetails",hangar);
return "/viewHangarDetailsByPlaneId";
}*/
}
