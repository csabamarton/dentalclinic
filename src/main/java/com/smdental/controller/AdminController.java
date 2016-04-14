package com.smdental.controller;

import com.smdental.model.Treatment;
import com.smdental.service.TreatmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	TreatmentService treatmentService;

	@RequestMapping("/login")
	public String loginPage()
	{
		return "login";
	}

	@RequestMapping("/dashboard")
	public String dashboardPage(Model model)
	{
		List<Treatment> headTreatments = treatmentService.getTreatments();

		model.addAttribute("treatments", headTreatments);

		return "admin/dashboard";
	}

	@RequestMapping("/addTreatment")
	public String addTreatment() {
		return "admin/addtreatment";
	}
}
