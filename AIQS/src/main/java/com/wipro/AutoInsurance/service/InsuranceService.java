package com.wipro.AutoInsurance.service;

import com.wipro.AutoInsurance.model.Insurance;
import java.util.List;


import com.wipro.AutoInsurance.repository.InsuranceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



public interface InsuranceService {
    Insurance saveInsurance(Insurance insurance);
    List<Insurance> getAllInsurances();
}

