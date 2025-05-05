package com.attendance.service;

import com.attendance.entity.UsersEntity;

public interface UsersService {

	UsersEntity login(String email, String password);

}
