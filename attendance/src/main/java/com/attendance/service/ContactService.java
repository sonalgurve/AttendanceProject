package com.attendance.service;

import java.util.List;

import com.attendance.entity.AddEmpEntity;
import com.attendance.entity.ContactEntity;

public interface ContactService {

	void saveContact(ContactEntity contactEntity);

	List<ContactEntity> GetContactData();

	void saveEmpData(AddEmpEntity addEmpEntity);

	List<AddEmpEntity> GetEmpData();

	void deletEmpdata(long deleteid);

	List<AddEmpEntity> GetDataByDept(String department);

	
	

	
	

}
