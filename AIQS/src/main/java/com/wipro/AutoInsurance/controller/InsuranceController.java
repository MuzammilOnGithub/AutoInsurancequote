package com.wipro.AutoInsurance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.wipro.AutoInsurance.model.Insurance;
import com.wipro.AutoInsurance.service.InsuranceService;


@Controller
public class InsuranceController {

    

    @Autowired
    private InsuranceService insuranceService;

    @GetMapping("/premium")
    public String getPremium(@RequestParam("premium") double premium, Model model) {
        Insurance insurance = new Insurance();
        insurance.setPremium(premium);
// save data in Insurance table
        model.addAttribute("insurance", insurance);
        return "insurance";
    }

    @PostMapping("/applyDiscount")
    public String applyDiscount(@RequestParam("premium") double premium,
                                @RequestParam("insurance") String insurance,
                                Model model) {
        String insuranceName = "";
        double discount = 0.0;
        if (insurance.equals("abc")) {
            insuranceName = "ABC Insurance";
            discount = 0.2;
        } else if (insurance.equals("xyz")) {
            insuranceName = "XYZ Insurance";
            discount = 0.3;
        }
        
        double finalPrice = premium - (premium * discount);
        
        Insurance insuranceObj = new Insurance();
        insuranceObj.setPremium(premium);
        insuranceObj.setInsuranceName(insuranceName);
        insuranceObj.setFinalPrice(finalPrice);
        
        Insurance savedInsurance = insuranceService.saveInsurance(insuranceObj);
        
        model.addAttribute("insurance", savedInsurance);
        
        return "insurance";
    }



}