package com.wipro.AutoInsurance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.wipro.AutoInsurance.model.Insurance;




import org.springframework.stereotype.Repository;

@Repository
public interface InsuranceRepository extends JpaRepository<Insurance, Long> {
}
