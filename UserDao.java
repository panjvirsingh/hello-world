package com.order.management.dao;

import java.util.List;

import com.order.management.domain.User;

public interface UserDao {
public void saveUser ( User user );
public List<User> getUser();
public void updateUser ( User user );
}
