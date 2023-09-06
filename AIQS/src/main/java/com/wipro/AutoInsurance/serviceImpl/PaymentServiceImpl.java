package com.wipro.AutoInsurance.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.AutoInsurance.model.Payment;
import com.wipro.AutoInsurance.repository.PaymentRepository;
import com.wipro.AutoInsurance.service.PaymentService;

@Service
public class PaymentServiceImpl implements PaymentService {
    @Autowired
    private PaymentRepository paymentRepository;

    @Override
    public boolean processPayment(Payment payment) {
   
        // This is just a dummy implementation.
        try {
            // Save the payment info in the database.
            paymentRepository.save(payment);
            return true;
        } catch (Exception e) {
            // Handle the exception.
            return false;
        }
    }
}
