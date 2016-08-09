package  com.SpringAss.web.model;

import com.SpringAss.web.jsonview.Views;
import com.fasterxml.jackson.annotation.JsonView;

/**
 * Created by Perumalsamy on 6/14/2016.
 */
public class Former {
	@JsonView(Views.class)
    public int FORMER_ID;
	@JsonView(Views.class)

    public String FIRST_NAME;
	@JsonView(Views.class)

    public String LAST_NAME;
	@JsonView(Views.class)

    public String GENDER;
    public String MARITAL_STATUS;
    public String DOB;
    public String RELIGION_CATEGORY;
    public String MOTHERS_NAME;
    public String FATHERS_NAME;
    public String AADHAR_ID;
	@JsonView(Views.class)

    public String MOBILE_NO;
    public String ALT_MOBILE_NO;
    public int NO_OF_FAMILY_MEMBERS;
	@JsonView(Views.class)

    public String HOUSE_NO;
	@JsonView(Views.class)

	public String PREMISE_NAME;
	@JsonView(Views.class)

	public String STREET_NAME;
	@JsonView(Views.class)

	public String STREET_NO;
	@JsonView(Views.class)

	public String LAND_MARK;
	@JsonView(Views.class)

	public String STATE;
	@JsonView(Views.class)

	public String CITY;
	@JsonView(Views.class)

	public String PIN_CODE;
    public int OCC_ID;
    public int EDUCATION_ID;
    public int SOF_ID;
    public int GAI_ID;
    

//    public Former(int FORMER_ID, String FIRST_NAME, String LAST_NAME, String GENDER,
//                  String MARITAL_STATUS, String DOB, String RELIGION_CATEGORY, String MOTHERS_NAME,
//                  String FATHERS_NAME, String AADHAR_ID, String MOBILE_NO, String ALT_MOBILE_NO,
//                  int NO_OF_FAMILY_MEMBERS, String HOUSE_NO, String PREMISE_NAME, String STREET_NAME,
//                  String STREET_NO, String LAND_MARK, String STATE, String CITY, String PIN_CODE,int OCC_ID) {
//        this.FORMER_ID = FORMER_ID;
//        this.FIRST_NAME = FIRST_NAME;
//        this.LAST_NAME = LAST_NAME;
//        this.GENDER = GENDER;
//        this.MARITAL_STATUS = MARITAL_STATUS;
//        this.DOB = DOB;
//        this.RELIGION_CATEGORY = RELIGION_CATEGORY;
//        this.MOTHERS_NAME = MOTHERS_NAME;
//        this.FATHERS_NAME = FATHERS_NAME;
//        this.AADHAR_ID = AADHAR_ID;
//        this.MOBILE_NO = MOBILE_NO;
//        this.ALT_MOBILE_NO = ALT_MOBILE_NO;
//        this.NO_OF_FAMILY_MEMBERS = NO_OF_FAMILY_MEMBERS;
//        this.HOUSE_NO = HOUSE_NO;
//        this.PREMISE_NAME = PREMISE_NAME;
//        this.STREET_NAME = STREET_NAME;
//        this.STREET_NO = STREET_NO;
//        this.LAND_MARK = LAND_MARK;
//        this.STATE = STATE;
//        this.CITY = CITY;
//        this.PIN_CODE = PIN_CODE;
//        this.OCC_ID=OCC_ID;
//    }

    public int getFORMER_ID() {
        return FORMER_ID;
    }

    public void setFORMER_ID(int FORMER_ID) {
        this.FORMER_ID = FORMER_ID;
    }

    public String getFIRST_NAME() {
        return FIRST_NAME;
    }

    public void setFIRST_NAME(String FIRST_NAME) {
        this.FIRST_NAME = FIRST_NAME;
    }

    public String getLAST_NAME() {
        return LAST_NAME;
    }

    public void setLAST_NAME(String LAST_NAME) {
        this.LAST_NAME = LAST_NAME;
    }

    public String getGENDER() {
        return GENDER;
    }

    public void setGENDER(String GENDER) {
        this.GENDER = GENDER;
    }

    public String getMARITAL_STATUS() {
        return MARITAL_STATUS;
    }

    public void setMARITAL_STATUS(String MARITAL_STATUS) {
        this.MARITAL_STATUS = MARITAL_STATUS;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getRELIGION_CATEGORY() {
        return RELIGION_CATEGORY;
    }

    public void setRELIGION_CATEGORY(String RELIGION_CATEGORY) {
        this.RELIGION_CATEGORY = RELIGION_CATEGORY;
    }

    public String getMOTHERS_NAME() {
        return MOTHERS_NAME;
    }

    public void setMOTHERS_NAME(String MOTHERS_NAME) {
        this.MOTHERS_NAME = MOTHERS_NAME;
    }

    public String getFATHERS_NAME() {
        return FATHERS_NAME;
    }

    public void setFATHERS_NAME(String FATHERS_NAME) {
        this.FATHERS_NAME = FATHERS_NAME;
    }

    public String getAADHAR_ID() {
        return AADHAR_ID;
    }

    public void setAADHAR_ID(String AADHAR_ID) {
        this.AADHAR_ID = AADHAR_ID;
    }

    public String getMOBILE_NO() {
        return MOBILE_NO;
    }

    public void setMOBILE_NO(String MOBILE_NO) {
        this.MOBILE_NO = MOBILE_NO;
    }

    public String getALT_MOBILE_NO() {
        return ALT_MOBILE_NO;
    }

    public void setALT_MOBILE_NO(String ALT_MOBILE_NO) {
        this.ALT_MOBILE_NO = ALT_MOBILE_NO;
    }

    public int getNO_OF_FAMILY_MEMBERS() {
        return NO_OF_FAMILY_MEMBERS;
    }

    public void setNO_OF_FAMILY_MEMBERS(int NO_OF_FAMILY_MEMBERS) {
        this.NO_OF_FAMILY_MEMBERS = NO_OF_FAMILY_MEMBERS;
    }

    public String getHOUSE_NO() {
        return HOUSE_NO;
    }

    public void setHOUSE_NO(String HOUSE_NO) {
        this.HOUSE_NO = HOUSE_NO;
    }

    public String getPREMISE_NAME() {
        return PREMISE_NAME;
    }

    public void setPREMISE_NAME(String PREMISE_NAME) {
        this.PREMISE_NAME = PREMISE_NAME;
    }

    public String getSTREET_NAME() {
        return STREET_NAME;
    }

    public void setSTREET_NAME(String STREET_NAME) {
        this.STREET_NAME = STREET_NAME;
    }

    public String getSTREET_NO() {
        return STREET_NO;
    }

    public void setSTREET_NO(String STREET_NO) {
        this.STREET_NO = STREET_NO;
    }

    public String getLAND_MARK() {
        return LAND_MARK;
    }

    public void setLAND_MARK(String LAND_MARK) {
        this.LAND_MARK = LAND_MARK;
    }

    public String getSTATE() {
        return STATE;
    }

    public void setSTATE(String STATE) {
        this.STATE = STATE;
    }

    public String getCITY() {
        return CITY;
    }

    public void setCITY(String CITY) {
        this.CITY = CITY;
    }

    public String getPIN_CODE() {
        return PIN_CODE;
    }

    public void setPIN_CODE(String PIN_CODE) {
        this.PIN_CODE = PIN_CODE;
    }

	public int getOCC_ID() {
		return OCC_ID;
	}

	public void setOCC_ID(int oCC_ID) {
		OCC_ID = oCC_ID;
	}

	public int getEDUCATION_ID() {
		return EDUCATION_ID;
	}

	public void setEDUCATION_ID(int eDUCATION_ID) {
		EDUCATION_ID = eDUCATION_ID;
	}

	public int getSOF_ID() {
		return SOF_ID;
	}

	public void setSOF_ID(int sOF_ID) {
		SOF_ID = sOF_ID;
	}

	public int getGAI_ID() {
		return GAI_ID;
	}

	public void setGAI_ID(int gAI_ID) {
		GAI_ID = gAI_ID;
	}

    
}
