package com.wipro.AutoInsurance.repository;

import org.springframework.data.repository.CrudRepository;

import com.wipro.AutoInsurance.model.Payment;

public interface PaymentRepository extends CrudRepository<Payment, Long> {
    // Here, you can define the methods you need for your repository.
}
