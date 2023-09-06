package com.wipro.AutoInsurance.service;

import com.wipro.AutoInsurance.model.Payment;

public interface PaymentService {
    boolean processPayment(Payment payment);
}
