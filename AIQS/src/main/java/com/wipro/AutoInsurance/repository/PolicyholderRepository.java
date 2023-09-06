package com.wipro.AutoInsurance.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.AutoInsurance.model.Policyholder;


@Repository
public interface PolicyholderRepository extends JpaRepository<Policyholder,Long> {
	Optional<Policyholder> findByUsernameAndPassword(String username,String password);
	
	Policyholder findByUsername(String username);

}
