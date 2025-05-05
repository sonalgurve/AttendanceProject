package com.attendance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.attendance.entity.AddEmpEntity;
import com.attendance.entity.ContactEntity;
import com.attendance.repository.AddEmpRepository;
import com.attendance.repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {
	
	@Autowired
	private ContactRepository contactRepository;
	
	@Autowired
	private AddEmpRepository addEmpRepository;
	
	

	@Override
	public void saveContact(ContactEntity contactEntity) {
		
		contactRepository.save(contactEntity);		
	}

	@Override
	public List<ContactEntity> GetContactData() {
		List<ContactEntity> all = contactRepository.findAll();
		return all;
	}

	@Override
	public void saveEmpData(AddEmpEntity addEmpEntity) {
		addEmpRepository.save(addEmpEntity);
		
	}

	@Override
	public List<AddEmpEntity> GetEmpData() {
		List<AddEmpEntity> all = addEmpRepository.findAll();
		return all;
	}

	@Override
	public void deletEmpdata(long deleteid) {
		addEmpRepository.deleteById(deleteid);
		
	}

	@Override
	public List<AddEmpEntity> GetDataByDept(String department) {
		return addEmpRepository.findByDepartment(department);
		
	}

	
	
	
	

}
