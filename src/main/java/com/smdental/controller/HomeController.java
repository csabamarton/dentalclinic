package com.smdental.controller;

import com.smdental.model.Treatment;
import com.smdental.service.TreatmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    TreatmentService treatmentService;

    @RequestMapping("/")
    public String home(Model model) {
        List<Treatment> headTreatments = treatmentService.getHeadTreatments(3);

        model.addAttribute("headTreatments", headTreatments);
        return "home";
    }


}
