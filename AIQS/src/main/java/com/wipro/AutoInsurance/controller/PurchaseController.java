package com.wipro.AutoInsurance.controller;

import com.wipro.AutoInsurance.model.Insurance;
import com.wipro.AutoInsurance.model.Quote;
import com.wipro.AutoInsurance.service.InsuranceService;
import com.wipro.AutoInsurance.service.QuoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PurchaseController {

    @Autowired
    private QuoteService quoteService;

    @Autowired
    private InsuranceService insuranceService;

    @GetMapping("/viewPurchase")
    public String viewPurchase(Model model, HttpSession session) {
        if (session.getAttribute("policyholder") == null) {
            return "login";
        }

        List<Quote> quotes = quoteService.getAllQuotes();
        model.addAttribute("quotes", quotes);

        List<Insurance> insurances = insuranceService.getAllInsurances();
        model.addAttribute("insurances", insurances);

        return "viewPurchase";
    }

    @GetMapping("/purchaseLogout")
    public String purchaseLogout(HttpSession session) {
        session.invalidate();
        return "login";
    }
}
