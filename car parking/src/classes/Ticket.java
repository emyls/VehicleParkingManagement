/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author Yasith
 */
public class Ticket {
    
    String tickNo;
    String secretId;
    Date date;
    Time time;

    public String getTickNo() {
        return tickNo;
    }

    public void setTickNo(String tickNo) {
        this.tickNo = tickNo;
    }

    public String getSecretId() {
        return secretId;
    }

    public void setSecretId(String secretId) {
        this.secretId = secretId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }
    
    
}
