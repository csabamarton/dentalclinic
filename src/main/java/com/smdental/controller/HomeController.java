package com.smdental.controller;

import com.google.common.primitives.Longs;
import com.smdental.model.Treatment;
import com.smdental.service.TreatmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

	@Autowired
	TreatmentService treatmentService;

	@RequestMapping(value = { "/", "/home" })
	public String home(Model model)
	{
		List<Treatment> headTreatments = treatmentService.getHeadTreatments(3);

		model.addAttribute("headTreatments", headTreatments);
		return "home";
	}

	@RequestMapping("/treatmentlist")
	public String treatmentList(Model model)
	{
		List<Treatment> headTreatments = treatmentService.getTreatments();

		model.addAttribute("headTreatments", headTreatments);

		return "treatmentlist";
	}

	@RequestMapping("/treatment/{treatmentId}")
	public String getTreatment(@PathVariable("treatmentId") String treatmentId,
			Model model) {
		Treatment treatment = treatmentService.getTreatmentById(Longs.tryParse(treatmentId));
		model.addAttribute("treatment", treatment);

		return "treatmentdetails";
	}
}
