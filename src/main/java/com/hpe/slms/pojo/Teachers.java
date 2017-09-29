package com.hpe.slms.pojo;

public class Teachers {
    private Integer id;

    private String tname;

    private String password;

    private String realname;

    private String clzname;

    public Teachers(Integer id, String tname, String password, String realname, String clzname) {
        this.id = id;
        this.tname = tname;
        this.password = password;
        this.realname = realname;
        this.clzname = clzname;
    }

    public Teachers() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getClzname() {
        return clzname;
    }

    public void setClzname(String clzname) {
        this.clzname = clzname == null ? null : clzname.trim();
    }
}