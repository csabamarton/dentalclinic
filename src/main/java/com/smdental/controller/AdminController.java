package com.smdental.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smdental.model.Treatment;
import com.smdental.service.TreatmentService;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

	@Autowired
	TreatmentService treatmentService;

	@RequestMapping("/dashboard")
	public String dashboardPage(Model model)
	{
		List<Treatment> treatments = treatmentService.getTreatments();

		model.addAttribute("treatments", treatments);
		model.addAttribute("user", getPrincipal());

		return "admin/dashboard";
	}

	@RequestMapping("/addTreatment")
	public String addTreatment(Model model)
	{
		Treatment treatment = new Treatment();

		model.addAttribute("treatment", treatment);

		return "admin/addtreatment";
	}

	@RequestMapping(value = "/saveTreatment", method = RequestMethod.POST)
	public String saveTreatment(@ModelAttribute("treatment") Treatment treatment)
	{
		treatmentService.insertTreatment(treatment);

		return "redirect:/admin/dashboard";
	}
}
