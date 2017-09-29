package com.hpe.slms.service;

import com.hpe.slms.pojo.Admin;
import org.springframework.stereotype.Component;

@Component
public interface adminservice {
    Admin editLogin(String username,String password,String type);
}
