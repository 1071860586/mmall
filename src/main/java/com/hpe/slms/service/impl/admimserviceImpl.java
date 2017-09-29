package com.hpe.slms.service.impl;

import com.hpe.slms.mapper.AdminMapper;
import com.hpe.slms.pojo.Admin;
import com.hpe.slms.service.adminservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class admimserviceImpl implements adminservice {
    @Autowired
    AdminMapper adminMapper;
    @Override
    public Admin editLogin(String username,String password,String type) {
      Admin admin=new Admin();
      admin.setUsername(username);
      admin.setPassword(password);
   adminMapper.Editperson(admin);

        return admin;
    }
}
