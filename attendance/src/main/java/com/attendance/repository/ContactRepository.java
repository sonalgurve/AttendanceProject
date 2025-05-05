package com.attendance.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.attendance.entity.ContactEntity;

public interface ContactRepository extends JpaRepository<ContactEntity, Long> {

}
