package com.SpringAss.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.SpringAss.web.dao.FarmerDao;
import com.SpringAss.web.jsonview.Views;
import com.SpringAss.web.model.AjaxResponseBody;
import com.SpringAss.web.model.Former;
import com.SpringAss.web.model.SearchCriteria;
import com.fasterxml.jackson.annotation.JsonView;

@RestController
@RequestMapping(value = "/api/former")
public class FarmerController {
	@Autowired
	private FarmerDao famerDao;
	
	@JsonView(Views.Public.class)
//	@RequestMapping(value = "/login")
//	public LoginDetails getLoginDetails(@RequestBody LoginDetails loginDetails) {
//		List<LoginDetails> result=new ArrayList<LoginDetails>();
//		LoginDetails returnDataDetails=new LoginDetails();
//		result=userDao.getLogDetails(loginDetails);
//		System.out.println(result.get(0).getRoll());
//		returnDataDetails.setRoll(result.get(0).getRoll());
//		returnDataDetails.setUserId(result.get(0).getUserId());
//		returnDataDetails.setUserName(result.get(0).getUserName());
//		/*returnDataDetails.setRoll(result.get(0).getRoll());*/
//		return returnDataDetails;
//	}
	
	
	
//	
//	@RequestMapping(value ="/getStdDetails/{userId}",method = RequestMethod.POST )
//	public List<StudentDetails> getStdDetails(@PathVariable int userId) {
//		List<StudentDetails> result=new ArrayList<StudentDetails>();
//		
//		result=userDao.getStdDetails(userId);
//		
//		
//		
//		System.out.println("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ.........."+userId);
//		
//		
//		return result;
//		 
//		
//	}
	
//	@RequestMapping(value ="/register",method = RequestMethod.POST )
//	public List<StudentDetails> getRegDetails(@RequestBody List<StudentDetails> regDetails) {
//		List<StudentDetails> result=new ArrayList<StudentDetails>();
//		
//		result=userDao.getRegDetaila(regDetails);
//		
//		
//		
//		//System.out.println("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ.........."+userId);
//		
//		
//		return result;
//		 
//		
//	}
//	
	//@RequestBody Former former
	@RequestMapping(value ="/test",method = RequestMethod.GET )
	public String getStdInactive12() {  		
		System.out.println("Service works fine...");
		return "Success";
		 
		
	}
	
	
	@RequestMapping(value ="/insertFormer",method = RequestMethod.POST )
	public int insertFormer(@RequestBody Former former) {
 		System.out.println("Inside Insert former method..."+former.getAADHAR_ID());
		int result=famerDao.insertFormerInfo(former);
		
		System.out.println("Record has been inserted...");
		return result;
		 
		
	}
	
	@JsonView(Views.class)
	@RequestMapping(value ="/getFormerInfo",method = RequestMethod.GET )
	public List<Former> getFormerInfo() {
 
		System.out.println("Inside in getformer controller...");
		List<Former>formerList=famerDao.getFormerInfo();
		
		
		return formerList;
		 
		
	}
	
	

//	@RequestMapping(value ="/getStdInactive/{userId}",method = RequestMethod.POST )
//	public List<StudentDetails> getStdInactive(@PathVariable int userId) {
//		List<StudentDetails> result=new ArrayList<StudentDetails>();
//		
//		result=userDao.getStdInactive(userId);
//		
//		
//		
//		System.out.println("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ.........."+userId);
//		
//		
//		return result;
//		 
//		
//	}
//	
	
	
	
}
