package com.attendance.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.attendance.dto.AttendanceForm;
import com.attendance.entity.AddEmpEntity;
import com.attendance.entity.AttendanceEntity;
import com.attendance.entity.ContactEntity;
import com.attendance.entity.UsersEntity;
import com.attendance.repository.AddEmpRepository;
import com.attendance.service.AttendanceService;
import com.attendance.service.ContactService;
import com.attendance.service.UsersService;

@Controller
public class AttendanceController {
	
	@Autowired
	private ContactService contactService;
	
	
	@Autowired
	private AddEmpRepository addEmpRepository;
	
	@Autowired
	private AttendanceService attendanceService;
	
	@Autowired
	private UsersService service;
	
	@GetMapping("/demo")
	public String demo() {
		return "demo";
	}
	
	@GetMapping("/Home")
	public String Home() {
		return "index";
	}
	 @GetMapping("/AboutUs")
	    public String AboutUs() {
	        return "about";
	   }
	 @GetMapping("/OurServices")
	    public String OurServices() {
	        return "service";
	    }
	 @GetMapping("/ContactUs")
	    public String ContactUs(HttpSession session) {
	        return "contact";
	    }
	 @GetMapping("/AdminLogin")
	    public String AdminLogin() {
	        return "login";
	    }
	
	 @GetMapping("/Attendance")
	    public String attendance(HttpSession session) {
		  // Check if the user is logged in by checking the session
		    if (session.getAttribute("user") == null) {
		        // If no user found in session, redirect to login page
		        return "login"; // Redirect to login page if not logged in
		    }
	        return "attendance";
	    }
	 @GetMapping("/Show_Contact_Data")
	    public String showcontactdata() {
	        return "contactdata";
	    }
	 
	 @GetMapping("/Show_List_of_Data")
	    public String showlistofdata(HttpSession session) {
		  // Check if the user is logged in by checking the session
		    if (session.getAttribute("user") == null) {
		        // If no user found in session, redirect to login page
		        return "login"; // Redirect to login page if not logged in
		    }
	        return "emp_data";
	    }
	 
		/*------------------ Save Contact Data -------------------- */    	
	 
	    @RequestMapping("/SaveContact")
	    public String SaveContactData(ContactEntity contactEntity, Model model) {
	    	contactService.saveContact(contactEntity);
	    	model.addAttribute("showPopup", true);
			return "contact";
	    	
	    }
	    
	    /*------------------ Fetch Contact Data -------------------- */    
	    
	    @RequestMapping("/Show_ContactData")
	    public String getcontactData(Model model, HttpSession session) {
	    	  // Check if the user is logged in by checking the session
	        if (session.getAttribute("user") == null) {
	            // If no user found in session, redirect to login page
	            return "login"; // Redirect to login page if not logged in
	        }
	    	List<ContactEntity> getContactData = contactService.GetContactData();
	    	model.addAttribute("cData", getContactData);
			return "contactdata";
	    }
	    
	    /*------------------ Save Employee Data -------------------- */    
	    
	    @RequestMapping("/saveempdata")
	    public String saveEmpData(AddEmpEntity addEmpEntity, Model model) {
	    	contactService.saveEmpData(addEmpEntity);
	    	model.addAttribute("showPopup", true);
			return "add_emp";
	    	
	    }
	    
	    /*------------------ Fetch Employee Data -------------------- */    
	    @RequestMapping("/Add_Employee")
	    public String getEmpData(Model model, HttpSession session) {
	    	  // Check if the user is logged in by checking the session
		    if (session.getAttribute("user") == null) {
		        // If no user found in session, redirect to login page
		        return "login"; // Redirect to login page if not logged in
		    }
	    	List<AddEmpEntity> getEmpData = contactService.GetEmpData();
	    	model.addAttribute("empdata", getEmpData);
			return "add_emp";
	    		    	
	    }
	    
	    /*------------------ Delete Employee Data -------------------- */ 
	    @RequestMapping("/delete-registration")
	    public String deleteEmp(@RequestParam long deleteid, Model model) {
	    	contactService.deletEmpdata(deleteid);
	    	List<AddEmpEntity> getEmpData = contactService.GetEmpData();
	    	model.addAttribute("empdata", getEmpData);
	    	 model.addAttribute("showDeletePopup", true);
			return "add_emp";
	    }
	    
	    /*------------------ Fetch Data By Selecting Dept -------------------- */ 
	    @RequestMapping("/fetchdata")
	    public String FetchData(@RequestParam("dept") String department, Model model, HttpSession session) {
	    	  // Check if the user is logged in by checking the session
		    if (session.getAttribute("user") == null) {
		        // If no user found in session, redirect to login page
		        return "login"; // Redirect to login page if not logged in
		    }
	    	
	    	List<AddEmpEntity> getDataByDept = contactService.GetDataByDept(department);
	    model.addAttribute("department", getDataByDept);
	    
			return "attendance";
	    	
	    }
	 
	    /*------------------ Save Attendance -------------------- */ 
	    @RequestMapping("/getEmployeesWithAttendance")
	    public String getEmployeesWithAttendance(@RequestParam("deptId") Long deptId, Model model) {
	       
	        return "attendance"; // your JSP page
	    }

	    
	    @PostMapping("/saveattendance")
	    public String saveAttendance(@ModelAttribute AttendanceForm form, Model model) {
	        attendanceService.saveAttendance(form.getAttendanceList());
	        model.addAttribute("showPopup", true);
	        return "attendance"; // ya jahan bhi redirect karna ho
	    }

	    
	    /*------------------ Show list of attendance -------------------- */ 
	    @PostMapping("/empshow")
	    public String showAttendance(@RequestParam String date, @RequestParam String dept, Model model, HttpSession session) {
	    	  // Check if the user is logged in by checking the session
		    if (session.getAttribute("user") == null) {
		        // If no user found in session, redirect to login page
		        return "login"; // Redirect to login page if not logged in
		    }
	        LocalDate localDate = LocalDate.parse(date); // Convert string to LocalDate
	        List<AttendanceEntity> attendanceList = attendanceService.getAttendanceByDateAndDept(localDate, dept);
	        model.addAttribute("attendanceList", attendanceList);
	        return "emp_data";  // Name of the JSP file
	    }
	    
	    /*------------------ Login -------------------- */ 
	    
	    @PostMapping("/login")
	    public String login(@RequestParam String email,
	                        @RequestParam String password,
	                        HttpSession session,
	                        Model model) {
	        UsersEntity user = service.login(email, password);
	        if (user != null) {
	            session.setAttribute("user", user);
	            model.addAttribute("login", true);
	            return "add_emp";  // after successful login
	        } else {
	            model.addAttribute("error", "Invalid credentials");
	            return "login";      // back to login page with error
	        }
	    }

	    
	    @PostMapping("/logout")
	    public String logout(HttpSession session) {
	        session.invalidate(); // Clears all session data
	        return "login"; // Redirect to login page
	    }

	 
	 
	 
	 
	 
	 

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
}
