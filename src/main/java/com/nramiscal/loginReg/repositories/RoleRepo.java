package com.nramiscal.loginReg.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nramiscal.loginReg.models.Role;

@Repository
public interface RoleRepo extends CrudRepository<Role, Long> {
	
    List<Role> findAll();
    
    List<Role> findByName(String name);
    
}
