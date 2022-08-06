package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Repository.UserRepository;
import com.bean.User;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;

	public String signIn(User u) {

		Optional<User> result = userRepository.findById(u.getEmail_Id());

		if (result.isPresent()) {
			User db_user = result.get();

			if (db_user.getPassword().equals(u.getPassword())) {
				if (db_user.getUser_Type().equals("admin")) {
					return "admin";
				} else {
					return "user";
				}
			} else {
				return "Wrong email or password";
			}
		} else {
			return "User Not Found, Please Register";
		}

	}
	
	public String signUp(User u) {
		Optional<User> result = userRepository.findById(u.getEmail_Id());
		
		if (result.isPresent()) {
			return "Sorry account already exist with "+u.getEmail_Id();
		}else {
			userRepository.save(u);
			return "Account Created Succesfully, Go Back To Login";
		}
	}
	
	public String changePassword(User u) {
		Optional<User> result = userRepository.findById(u.getEmail_Id());
		
		if (result.isPresent()) {
			User db_user = result.get();
			db_user.setPassword(u.getPassword());
			
			userRepository.saveAndFlush(db_user);
			return "User password updated";
		}else {
			return "User not updated";
		}
	}
	
	public List<User> getAllUser(){
		return userRepository.findAll();
	}
}
