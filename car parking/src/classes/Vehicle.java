/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author Yasith
 */
public class Vehicle {
    
  String  vid;
  String  licenseNo;
  String  category;
  String  vehi_status;

    public String getVid() {
        return vid;
    }

    public void setVid(String vid) {
        this.vid = vid;
    }

    public String getLicenseNo() {
        return licenseNo;
    }

    public void setLicenseNo(String licenseNo) {
        this.licenseNo = licenseNo;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getVehi_status() {
        return vehi_status;
    }

    public void setVehi_status(String vehi_status) {
        this.vehi_status = vehi_status;
    }
    
}
