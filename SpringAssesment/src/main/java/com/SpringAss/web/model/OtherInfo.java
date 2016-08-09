package  com.SpringAss.web.model;

/**
 * Created by Perumalsamy on 6/14/2016.
 */
public class OtherInfo {

    public int FORMER_ID;
    public String EDUCATION;
    public String GAI;
    public String SOF;

    public OtherInfo(int FORMER_ID, String EDUCATION, String GAI, String SOF) {
        this.FORMER_ID = FORMER_ID;
        this.EDUCATION = EDUCATION;
        this.GAI = GAI;
        this.SOF = SOF;
    }

    public int getFORMER_ID() {
        return FORMER_ID;
    }

    public void setFORMER_ID(int FORMER_ID) {
        this.FORMER_ID = FORMER_ID;
    }

    public String getEDUCATION() {
        return EDUCATION;
    }

    public void setEDUCATION(String EDUCATION) {
        this.EDUCATION = EDUCATION;
    }

    public String getGAI() {
        return GAI;
    }

    public void setGAI(String GAI) {
        this.GAI = GAI;
    }

    public String getSOF() {
        return SOF;
    }

    public void setSOF(String SOF) {
        this.SOF = SOF;
    }
}
