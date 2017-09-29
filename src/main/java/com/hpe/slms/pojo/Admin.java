package com.hpe.slms.pojo;

public class Admin {
    private Integer id;

    private String username;

    private String password;

    private Integer type;

    public Admin(Integer id, String username, String password, Integer type) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.type = type;
    }

    public Admin() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}