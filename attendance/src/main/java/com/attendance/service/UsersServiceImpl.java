package com.attendance.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.attendance.entity.UsersEntity;
import com.attendance.repository.UsersRepository;

@Service
public class UsersServiceImpl implements UsersService{
	
	@Autowired
	private UsersRepository repository;

	@Override
	public UsersEntity login(String email, String password) {
		return repository.findByEmailAndPassword(email, password);
		
		
	}

}
