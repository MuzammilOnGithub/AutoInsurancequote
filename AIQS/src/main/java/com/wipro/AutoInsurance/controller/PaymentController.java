package com.wipro.AutoInsurance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.wipro.AutoInsurance.model.Payment;
import com.wipro.AutoInsurance.service.PaymentService;

@Controller
public class PaymentController {
    
    @Autowired
    private PaymentService paymentService;

    @GetMapping("/processPayment")
    public String paymentForm(Model model) {
        model.addAttribute("payment", new Payment());
        return "payment";
    }

    @PostMapping("/processPayment")
    public String processPayment(Payment payment, Model model) {
        try {
            boolean paymentProcessed = paymentService.processPayment(payment);
            if (paymentProcessed) {
                return "paymentSuccess";
            } else {
                model.addAttribute("error", "Payment failed. Please try again.");
                return "payment";
            }
        } catch (Exception e) {
            model.addAttribute("error", "An error occurred. Please try again.");
            return "payment";
        }
    }
}
