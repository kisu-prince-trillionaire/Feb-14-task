package com.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.demo.bean.User;

public interface UserDao extends CrudRepository<User, String> {

}
