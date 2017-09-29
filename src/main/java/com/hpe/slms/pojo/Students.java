package com.hpe.slms.pojo;

import java.util.List;

public class Students {
    private Integer id;

    private String sname;

    private String sex;

    private String direction;

    private String clzname;

    private String schoolname;

    private String depatment;

    private String major;

    private String card;

    private String phone;

    private String address;

    private String parentname;

    private String parentphone;



    public  List<Scores> scores;

    public Students(Integer id, String sname, String sex, String direction, String clzname, String schoolname, String depatment, String major, String card, String phone, String address, String parentname, String parentphone) {
        this.id = id;
        this.sname = sname;
        this.sex = sex;
        this.direction = direction;
        this.clzname = clzname;
        this.schoolname = schoolname;
        this.depatment = depatment;
        this.major = major;
        this.card = card;
        this.phone = phone;
        this.address = address;
        this.parentname = parentname;
        this.parentphone = parentphone;
    }

    public Students() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction == null ? null : direction.trim();
    }

    public String getClzname() {
        return clzname;
    }

    public void setClzname(String clzname) {
        this.clzname = clzname == null ? null : clzname.trim();
    }

    public String getSchoolname() {
        return schoolname;
    }

    public void setSchoolname(String schoolname) {
        this.schoolname = schoolname == null ? null : schoolname.trim();
    }

    public String getDepatment() {
        return depatment;
    }

    public void setDepatment(String depatment) {
        this.depatment = depatment == null ? null : depatment.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card == null ? null : card.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getParentname() {
        return parentname;
    }

    public void setParentname(String parentname) {
        this.parentname = parentname == null ? null : parentname.trim();
    }

    public String getParentphone() {
        return parentphone;
    }

    public void setParentphone(String parentphone) {
        this.parentphone = parentphone == null ? null : parentphone.trim();
    }
}