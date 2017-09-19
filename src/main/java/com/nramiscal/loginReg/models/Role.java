package com.nramiscal.loginReg.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="roles")
public class Role {
	
	@Id
	@GeneratedValue
	private Long id;
	
	@Column
	private String name;
	
    @ManyToMany(mappedBy = "roles")
    private List<User> users;
    
    // constructors
    
    public Role() {
    	
    }

	public Role(String name) {
		super();
		this.name = name;
	}

	
	// getters

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public List<User> getUsers() {
		return users;
	}
	
	// setters

	public void setId(Long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
    
	
}
