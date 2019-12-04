package com.airport.AirportManagementSystem.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.airport.AirportManagementSystem.model.Admin;
import com.airport.AirportManagementSystem.model.Hangar;
import com.airport.AirportManagementSystem.model.HangarStatus;
import com.airport.AirportManagementSystem.model.Manager;
import com.airport.AirportManagementSystem.model.Plane;
import com.airport.AirportManagementSystem.service.AdminService;
import com.airport.AirportManagementSystem.service.ManagerService;


@Controller
public class ManagerController {


	@Autowired
	ManagerService managerService;
	
		@RequestMapping("/toRegisterManager")
	    public String display(Model model)
	    {
			model.addAttribute("manager",new Manager());
			return "/registerManagerForm";
	    }
		
		@RequestMapping(value="/registerManager",method=RequestMethod.POST)
		public String addManager(@Valid @ModelAttribute("admin")Manager manager,Model managerModel)
		{
			
		    Manager newManager=managerService.addManager(manager);
			managerModel.addAttribute("addedManager",newManager);
			return "/registerManagerSuccess";
		}
		
		@RequestMapping("/toLoginManager")
		public String login(Model model) {
			model.addAttribute("manager", new Manager());
			return "/managerLogin";
		}

		@RequestMapping("/loginManager")
		public String login(@ModelAttribute("manager") Manager manager) {
			String username = manager.getEmailId();
			String password = manager.getPassword();
			managerService.checkManagerLogin(username, password);
			return "/viewManagerForm";
		}
		

		@RequestMapping("/ViewPlaneStatus")
		public String viewPlanes(Model model) {
			List<Plane> plane = new ArrayList<Plane>();
			plane= managerService.viewPlanes();
			model.addAttribute("plane", plane);
			return "/viewPlanes";
		}
		
		@RequestMapping("/ViewHangarStatus")
		public String viewHangarStatus(Model model) {
			List<HangarStatus> hangarStatus = new ArrayList<HangarStatus>();
			hangarStatus= managerService.viewHangarStatus();
			model.addAttribute("hangarStatus",hangarStatus);
			return "/viewHangarStatus";
		}
		
		@RequestMapping("/HangarAllotment")
		public String allotHangar(Model model)
		{  
			model.addAttribute("plane",new Plane());
			model.addAttribute("hangarStatus",new HangarStatus());
			return "/allotHangar";
			
		}
		
		@RequestMapping("/afterAllotHangar")
		public String afterAllotHangaer(@RequestParam("planeId")int planeId,@RequestParam("hangarId")int hangarId,Model model)
		{
			Plane plane=managerService.allotHangartoPlane(planeId, hangarId);
			Hangar hangar=managerService.allotPlanetoHangar(planeId, hangarId);
			model.addAttribute("plane", plane);
			model.addAttribute("hangar", hangar);
			return "/afterAllotHangar";
			
		}
	
}
