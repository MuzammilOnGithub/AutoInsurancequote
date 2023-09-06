package com.wipro.AutoInsurance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.AutoInsurance.model.Quote;

@Repository
public interface QuoteRepository extends JpaRepository<Quote, Long> {
    // Add any custom query methods if needed
}
