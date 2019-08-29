package Vishnu.Model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table
public class Register implements Serializable {

    private static final long serialVersionUID = 6L;
    @Id
    String username;
    @NotNull
    String name;
    @NotNull
    String email;
    @NotNull
    String password;
    @NotNull
    String Address;
    @NotNull
    String gender;
    @NotNull
    String dob;
    @NotNull
    String phoneNo;
    Date user_registered_on;

    String role = "Role_User";
    boolean enabled = true;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getUser_registered_on() {
        return user_registered_on;
    }

    public void setUser_registered_on(Date user_registered_on) {
        this.user_registered_on = user_registered_on;
    }

   /* public Register(String username, @NotNull String name, @NotNull String email, @NotNull String password, @NotNull String address, @NotNull String gender, @NotNull String dob, @NotNull String phoneNo, Date user_registered_on, String role, boolean enabled) {
        this.username = username;
        this.name = name;
        this.email = email;
        this.password = password;
        Address = address;
        this.gender = gender;
        this.dob = dob;
        this.phoneNo = phoneNo;
        this.user_registered_on = user_registered_on;
        this.role = role;
        this.enabled = enabled;
    }*/

    @Override
    public String toString() {
        return "Register{" +
                "username='" + username + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", Address='" + Address + '\'' +
                ", gender='" + gender + '\'' +
                ", dob='" + dob + '\'' +
                ", phoneNo='" + phoneNo + '\'' +
                ", user_registered_on=" + user_registered_on +
                ", role='" + role + '\'' +
                ", enabled=" + enabled +
                '}';
    }
}