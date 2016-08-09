package com.SpringAss.web.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.SpringAss.web.model.Former;
 


 public class FarmerDaoImpl implements FarmerDao{
	private JdbcTemplate jdbcTemplate;
	
	
	public FarmerDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	



	@Override
	public int insertFormerInfo(Former former) {
		// TODO Auto-generated method stub
        String insertSql="insert into former(FIRST_NAME,LAST_NAME,GENDER,MARITAL_STATUS,DOB,RELIGION_CATEGORY,MOTHERS_NAME,"
        		+ "FATHERS_NAME,AADHAR_ID,MOBILE_NO,ALT_MOBILE_NO,NO_OF_FAMILY_MEMBERS,HOUSE_NO,"
        		+ "PREMISE_NAME,STREET_NAME,STREET_NO,LAND_MARK,STATE,CITY,PIN_CODE,OCC_ID)"
        		+ " values(?,?,?,?,STR_TO_DATE(?,'%d/%m/%Y'),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        
        jdbcTemplate.update(insertSql,new Object[]{
        								former.getFIRST_NAME(),
        								former.getLAST_NAME(),
        								former.getGENDER(),
        								former.getMARITAL_STATUS(),
        								former.getDOB(),
        								former.getRELIGION_CATEGORY(),
        								former.getMOTHERS_NAME(),
        								former.getFATHERS_NAME(),
        								former.getAADHAR_ID(),
        								former.getMOBILE_NO(),
        								former.getALT_MOBILE_NO(),
        								former.getNO_OF_FAMILY_MEMBERS(),
        								former.getHOUSE_NO(),
        								former.getPREMISE_NAME(),
        								former.getSTREET_NAME(),
        								former.getSTREET_NO(),
        								former.getLAND_MARK(),
        								former.getSTATE(),
        								former.getCITY(),
        								former.getPIN_CODE(),
        								former.getOCC_ID()        								
        });
        
        String sql = "SELECT max(FORMER_ID) FORMER_ID FROM former";        
    	int formerId = Integer.parseInt((jdbcTemplate.queryForList(sql).get(0).get("FORMER_ID")).toString());
    	System.out.println("Former id:"+formerId);
        String insertOtherInfo="INSERT INTO other_info(FORMER_ID,EDUCATION,GAI,SOF) VALUES(?,?,?,?)";
        jdbcTemplate.update(insertOtherInfo,new Object[]{
        		formerId,
        		former.getEDUCATION_ID(),
        		former.getGAI_ID(),
        		former.getSOF_ID()
        		
        });
        System.out.println(insertSql);
		return 1;
	}




	@Override
	public List<Former> getFormerInfo() {
		// TODO Auto-generated method stub
		List<Former> formerList = jdbcTemplate.query(
				"select FIRST_NAME,LAST_NAME,MOBILE_NO,STREET_NO,HOUSE_NO,STREET_NAME,CITY,STATE from former",
				new RowMapper<Former>() {
				public Former mapRow(ResultSet rs, int rowNum) throws SQLException {
					Former former = new Former();
					former.setFIRST_NAME(rs.getString("FIRST_NAME"));
					former.setLAST_NAME(rs.getString("LAST_NAME"));
					former.setMOBILE_NO(rs.getString("MOBILE_NO"));
					former.setSTREET_NO(rs.getString("STREET_NO"));
					former.setHOUSE_NO(rs.getString("HOUSE_NO"));
					former.setSTREET_NAME(rs.getString("STREET_NAME"));
					former.setCITY(rs.getString("CITY"));
					former.setSTATE(rs.getString("STATE"));
				//user.setFirstName(rs.getString("firstname"));
				//user.setLastName(rs.getString("lastname"));
				return former;
				}
				});
		
		return formerList;
	}

	

}
