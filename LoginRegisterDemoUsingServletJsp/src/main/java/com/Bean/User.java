package com.Bean;

public class User {
    private String fname;
    private String lname;
    private String email;
    private String mobile;
    private String address;

    // Constructor
    public User(String fname, String lname, String email, String mobile, String address) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.mobile = mobile;
        this.address = address;
    }

    // Getters
    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }

    public String getMobile() {
        return mobile;
    }

    public String getAddress() {
        return address;
    }

    // Setters (if needed)
    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
