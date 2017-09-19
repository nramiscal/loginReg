package com.nramiscal.loginReg.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nramiscal.loginReg.models.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {
	
	User findByUsername(String username);

}

