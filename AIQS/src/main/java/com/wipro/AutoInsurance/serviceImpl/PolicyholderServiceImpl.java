package com.wipro.AutoInsurance.serviceImpl;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.HttpSessionRequiredException;

import com.wipro.AutoInsurance.exceptions.UsernameAlreadyExistException;
import com.wipro.AutoInsurance.model.Policyholder;
import com.wipro.AutoInsurance.model.LoginModel;
import com.wipro.AutoInsurance.repository.PolicyholderRepository;

@Service
public class PolicyholderServiceImpl {

    @Autowired
    PolicyholderRepository policyholderRepository;

    @Autowired
    HttpSession session;

    public String register(Policyholder policyholder) throws UsernameAlreadyExistException {
        Policyholder obj = policyholderRepository.findByUsername(policyholder.getUsername());
        if (obj != null) {
            throw new UsernameAlreadyExistException("Username Already Exists");
        }
        policyholderRepository.save(policyholder);
        return "Successfully Registered";
    }

    public Policyholder login(LoginModel loginModel) {
        Optional<Policyholder> policyholder = policyholderRepository.findByUsernameAndPassword(
                loginModel.getUsername(), loginModel.getPassword());
        if (policyholder.isEmpty()) {
            return null;
        }
        session.setAttribute("policyholder", policyholder.get());
        return policyholder.get();
    }

    public Policyholder getPolicyholderDetails() throws HttpSessionRequiredException {
        Policyholder policyholder = (Policyholder) session.getAttribute("policyholder");
        if (policyholder == null) {
            throw new HttpSessionRequiredException("Http Session Not Found!");
        } else {
            return policyholder;
        }
    }

    public Policyholder updateProfile(Policyholder updatePolicyholder) {
        Policyholder policyholder = policyholderRepository.findById(updatePolicyholder.getId()).get();
        policyholder.setName(updatePolicyholder.getName());
        policyholder.setUsername(updatePolicyholder.getUsername());
        policyholder.setVehiclenumber(updatePolicyholder.getVehiclenumber());
        policyholder.setEmail(updatePolicyholder.getEmail());
        policyholder.setLocation(updatePolicyholder.getLocation());
        policyholder.setPhoneNumber(updatePolicyholder.getPhoneNumber());
        policyholder.setVehicleYear(updatePolicyholder.getVehicleYear());
        policyholder.setVehicleModel(updatePolicyholder.getVehicleModel());
        policyholder.setChassisNumber(updatePolicyholder.getChassisNumber());
        policyholder.setEngineNumber(updatePolicyholder.getEngineNumber());
        Policyholder updatedPolicyholder = policyholderRepository.save(policyholder);
        session.setAttribute("policyholder", updatedPolicyholder);
        return updatedPolicyholder;
    }

    public boolean changePassword(Long policyholderId, String oldPassword, String newPassword) {
        Optional<Policyholder> optionalPolicyholder = policyholderRepository.findById(policyholderId);
        if (optionalPolicyholder.isPresent()) {
            Policyholder policyholder = optionalPolicyholder.get();
            if (policyholder.getPassword().equals(oldPassword)) {
                policyholder.setPassword(newPassword);
                policyholderRepository.save(policyholder);
                return true;
            }
        }
        return false;
    }

    public void logout() {
        session.removeAttribute("policyholder");
    }
}
