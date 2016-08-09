package  com.SpringAss.web.model;

/**
 * Created by Perumalsamy on 6/14/2016.
 */
public class Occputation {

    public int Occ_det_id;
    public String Occ_id;
    public String Occ_detail;

    public Occputation(int occ_det_id, String occ_id, String occ_detail) {
        Occ_det_id = occ_det_id;
        Occ_id = occ_id;
        Occ_detail = occ_detail;
    }

    public int getOcc_det_id() {
        return Occ_det_id;
    }

    public void setOcc_det_id(int occ_det_id) {
        Occ_det_id = occ_det_id;
    }

    public String getOcc_id() {
        return Occ_id;
    }

    public void setOcc_id(String occ_id) {
        Occ_id = occ_id;
    }

    public String getOcc_detail() {
        return Occ_detail;
    }

    public void setOcc_detail(String occ_detail) {
        Occ_detail = occ_detail;
    }


}
