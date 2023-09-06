package com.wipro.AutoInsurance.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wipro.AutoInsurance.model.Insurance;
import com.wipro.AutoInsurance.repository.InsuranceRepository;
import com.wipro.AutoInsurance.service.InsuranceService;



@Service
public class InsuranceServiceImpl implements InsuranceService {

    @Autowired
    private InsuranceRepository insuranceRepository;

    @Override
    public Insurance saveInsurance(Insurance insurance) {
        return insuranceRepository.save(insurance);
        
        
    }
    @Override
    public List<Insurance> getAllInsurances() {
        return insuranceRepository.findAll();
    }
}

