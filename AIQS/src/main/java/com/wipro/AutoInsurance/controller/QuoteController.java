package com.wipro.AutoInsurance.controller;

import com.wipro.AutoInsurance.model.Quote;
import com.wipro.AutoInsurance.service.QuoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Random;

@Controller
@RequestMapping("/quote")
public class QuoteController {

    @Autowired
    private QuoteService quoteService;

    @GetMapping("/form")
    public String showQuoteForm(Model model, HttpSession session) {
        if (session.getAttribute("policyholder") == null) {
            return "login";
        }

        model.addAttribute("quote", new Quote());
        return "quote-form";
    }

    @PostMapping("/calculate")
    public String calculateQuote(@ModelAttribute("quote") Quote quote, @RequestParam("primaryDriver") String primaryDriverOption) {
        quote.calculateIDV();
        quote.calculatePremium();

        boolean hasPrimaryDriver = primaryDriverOption.equals("yes");
        quote.setHasPrimaryDriver(hasPrimaryDriver);

        // Generate random positive ID and set it in the quote object
        Random random = new Random();
        long randomId = Math.abs(random.nextLong()); // Use Math.abs to ensure positive value
        quote.setId(randomId);

        quoteService.saveOrUpdateQuote(quote);

        return "quote-result";
    }
}
