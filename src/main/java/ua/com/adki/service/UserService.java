package ua.com.adki.service;

import ua.com.adki.entity.User;

import java.util.List;

public interface UserService {

    void save(User user);
    List<User> findAll();

}
