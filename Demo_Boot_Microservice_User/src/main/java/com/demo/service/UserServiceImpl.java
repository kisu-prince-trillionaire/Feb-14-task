package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.demo.bean.User;
import com.demo.dao.UserDao;

public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;

	@Override
	public List<User> getAllUser() {
		return (List<User>) dao.findAll();
	}

	@Override
	public User getUser(String id) {
		return dao.findById(id).orElse(null);
	}

	@Override
	public User addUser(User user) {
		return dao.save(user);
	}

	@Override
	public User updateUser(User user) {
		return dao.save(user);
	}

	@Override
	public String deleteUser(String id) {
		dao.deleteById(id);
		return "Deleted Sucessfully";
	}

}
