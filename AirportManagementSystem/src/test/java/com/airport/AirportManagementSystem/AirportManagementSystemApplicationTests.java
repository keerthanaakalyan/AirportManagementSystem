package com.airport.AirportManagementSystem;

import javax.transaction.Transactional;

import static org.junit.Assert.*;

import java.util.Iterator;
import java.util.List;

import javax.validation.constraints.NotEmpty;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.airport.AirportManagementSystem.dao.PilotDAO;
import com.airport.AirportManagementSystem.model.Admin;
import com.airport.AirportManagementSystem.model.Pilot;
import com.airport.AirportManagementSystem.model.Plane;
import com.airport.AirportManagementSystem.service.AdminService;

@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
public class AirportManagementSystemApplicationTests {

	/*
	 * @Test void contextLoads() { }
	 */

	@Autowired
	AdminService adminService;

	@Autowired
	PilotDAO PilotDAO;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {

	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {

	}

	@After
	public void tearDown() throws Exception {

	}

	/*
	 * @Test public void test() { Admin adminnew=new
	 * Admin(1,"priya","vinitha",22,"female","02/12/1997",
	 * "9887367332","9876543567","hdfh@gm.com","enemy"); assertEquals(); }
	 */
	// add admin test
	@Test
	@Transactional
	public void testAddAdmin() {

		Admin admin = new Admin(7, "kavitha", "vifdf", 23, "female", "02-12-1994", "9876543212", "8765434567",
				"hdfdh@gmail.com", "endemyyy");
		Admin newAdmin = adminService.addAdmin(admin);
		// assertEquals( true, newAdmin instanceof Admin);
		assertEquals(23, newAdmin.getAge());
		// System.out.println(newAdmin.getFirstName());
	}

	// login admin test
	@Test
	@Transactional
	public void testAdminLogin() {

		int result = adminService.checkAdminLogin("shaki@gmail.com", "sdfgdfh");
		assertEquals(0, result);

	}

	// add Pilot test
	@Test
	@Transactional
	public void testAddPilot() {
		Pilot Pilot = new Pilot(2, 100, "345678", "addr1", "addr2", "chennai", "Tn", "625009", 887);
		Pilot newPilot = adminService.addPilot(Pilot);
		assertEquals("addr1", newPilot.getAddressLine1());
	}

	// update Pilot
	@Test
	@Transactional
	public void testUpdatePilot() {
		Pilot pilot = new Pilot(2, 100, "345678", "address", "addr2", "chennai", "Tn", "625009", 887);
		Pilot newPilot = adminService.addPilot(pilot);
		assertEquals("address", newPilot.getAddressLine1());
	}

	// view Pilot
	@Test
	@Transactional
	public void testviewPilot() {
		Pilot pilot = adminService.getPilotDetailsByPilotId(0);
		assertNull(pilot);
	}

	// view All Pilots
	@Test
	@Transactional
	public void testviewAllPilot() {
		List<Pilot> pilot = adminService.viewPilots();
		assertNotNull(pilot);
	}

	// delete Pilot
	@Test
	@Transactional
	public void testDeletePilot() {
		System.out.println("hii");
		Pilot pilot = adminService.deletePilot(2);
		assertEquals(pilot.getPilotId(), 2);
	}

	// add plane test
	@Test
	@Transactional
	public void testAddPlane() {
		Plane plane = new Plane(1, 100, "yegammai", "lakshmanan", "9873673647", "yege@gmail.com", "aero", 1500, 1000);
		Plane newPlane = adminService.addPlane(plane);
		assertEquals(100, newPlane.getOwnerId());
	}

	// update plane
	@Test
	@Transactional
	public void testUpdatePlane() {
		Plane plane = new Plane(1, 101, "yegammai", "lakshmanan", "9873673647", "yege@gmail.com", "aero", 1500, 1000);
		Plane newPlane = adminService.addPlane(plane);
		assertEquals(101, newPlane.getOwnerId());
	}

	// view Pilot
	@Test
	@Transactional
	public void testviewPlane() {
		Plane plane = adminService.getPlaneDetailsByPlaneId(0);
		assertNull(plane);
	}

	// view All Pilots
	@Test
	@Transactional
	public void testviewAllPlanes() {
		List<Plane> plane = adminService.viewPlanes();
		assertNotNull(plane);
	}

	// delete plane
	@Test
	@Transactional
	public void testDeletePlane() {
		System.out.println("hii");
		Plane plane = adminService.deletePlane(2);
		assertEquals(plane.getPlaneId(), 2);
		
	}
}
