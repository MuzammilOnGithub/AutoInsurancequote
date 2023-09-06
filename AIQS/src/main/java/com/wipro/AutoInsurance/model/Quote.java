package com.wipro.AutoInsurance.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "quotes")
public class Quote {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

 
    @Column(name = "age")
    private int age;

    @Column(name = "idv")
    private double idv;

    @Column(name = "premium")
    private double premium;

    @Column(name = "primary_driver")
    private boolean hasPrimaryDriver;
    @Column(name = "showroom_price")
    private double showroomPrice;


    // Constructors, getters, and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    


    // Rest of the class code

    public boolean isHasPrimaryDriver() {
        return hasPrimaryDriver;
    }

    public void setHasPrimaryDriver(boolean hasPrimaryDriver) {
        this.hasPrimaryDriver = hasPrimaryDriver;
    }
    
        

        public double getShowroomPrice() {
            return showroomPrice;
        }

        public void setShowroomPrice(double showroomPrice) {
            this.showroomPrice = showroomPrice;
        }
    

    // Rest of the class code


        public double getIdv() { // or corresponding getter
            return this.idv;
        }

        public void setIdv(double idv) { // or corresponding setter
            this.idv = idv;
        }
        public double getPremium() {
            return this.premium;
        }
        public int getAge() {
            return age;
        }

        public void setAge(int age) {
            this.age = age;
        }


    public void calculateIDV() {
        // IDV is a percentage of the show room price based on the age of the vehicle
        double idvPercentage = 0.95 - (0.1 * age); // IDV percentage based on vehicle age
        this.idv = showroomPrice * idvPercentage;
    }

    public void calculatePremium() {
        double idv = this.idv;
       
        double premiumPercentage = 0.04; // Premium as 4% of IDV
        this.premium = idv * premiumPercentage ;
    }
}