package com.wipro.AutoInsurance.controller;

import com.wipro.AutoInsurance.exceptions.UsernameAlreadyExistException;
import com.wipro.AutoInsurance.model.Policyholder;
import com.wipro.AutoInsurance.model.LoginModel;
import com.wipro.AutoInsurance.serviceImpl.PolicyholderServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class MainController {

    @Autowired
    private PolicyholderServiceImpl policyholderService;

    @GetMapping("/")
    public String getWelcome() {
        System.out.println("Welcome");
        return "welcome";
    }

    @GetMapping("/register")
    public String getRegisterView() {
        return "register";
    }

    @PostMapping("/register")
    public String register(Policyholder policyholder, Model model) {
        try {
            model.addAttribute("response", policyholderService.register(policyholder));
        } catch (UsernameAlreadyExistException e) {
            model.addAttribute("response", e.getMessage());
            return "register";
        }
        return "login";
    }

    @GetMapping("/login")
    public String getLoginView() {
        return "login";
    }

    @PostMapping("/login")
    public String login(LoginModel loginModel, Model model, HttpSession session) {
        Policyholder policyholder = policyholderService.login(loginModel);
        if (policyholder == null) {
            model.addAttribute("response", "Login failed. Please check your username and password.");
            return "login";
        } else {
            session.setAttribute("policyholder", policyholder);
            return "redirect:/home";
        }
    }

    @GetMapping("/home")
    public String getHome(HttpSession session) {
        if (session.getAttribute("policyholder") == null) {
            return "redirect:/login";
        }
        return "home";
    }

    @GetMapping("/updateProfile")
    public String updateProfile(Model model, HttpSession session) {
        Policyholder policyholder = (Policyholder) session.getAttribute("policyholder");
        if (policyholder == null) {
            model.addAttribute("response", "Session expired. Please login again.");
            return "welcome";
        }
        model.addAttribute("policyholder", policyholder);
        return "profile";
    }

    @PostMapping("/update")
    public String updateProfile(Policyholder policyholder, Model model) {
        policyholder = policyholderService.updateProfile(policyholder);
        model.addAttribute("policyholder", policyholder);
        model.addAttribute("success", true);
        return "profile";
    }

    @GetMapping("/changepassword")
    public String getChangePasswordView(HttpSession session) {
        if (session.getAttribute("policyholder") == null) {
            return "redirect:/login";
        }
        return "changepassword";
    }

    @PostMapping("/changepassword")
    public String changePasswordView(@RequestParam("oldpassword") String password,
                                     @RequestParam("newpassword") String newpassword, Model model, HttpSession session) {
        Policyholder policyholder = (Policyholder) session.getAttribute("policyholder");
        if (policyholder == null) {
            return "redirect:/login";
        }
        boolean status = policyholderService.changePassword(policyholder.getId(), password, newpassword);
        if (status) {
            model.addAttribute("message", "Password changed successfully");
            return "changepassword_success";
        } else {
            model.addAttribute("error", "Incorrect old password");
            return "changepassword";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "login";
    }
}
