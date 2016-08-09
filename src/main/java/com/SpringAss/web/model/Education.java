package  com.SpringAss.web.model;

/**
 * Created by Perumalsamy on 6/14/2016.
 */
public class Education {

    public int ID;
    public String EDUCATION;

    public Education(int ID, String EDUCATION) {
        this.ID = ID;
        this.EDUCATION = EDUCATION;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getEDUCATION() {
        return EDUCATION;
    }

    public void setEDUCATION(String EDUCATION) {
        this.EDUCATION = EDUCATION;
    }
}
