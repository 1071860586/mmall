package com.hpe.slms.pojo;

public class edit {
    private int id;
    private String info;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public edit(int id, String info) {
        this.id = id;
        this.info = info;
    }

    public edit() {
    }

    @Override
    public String toString() {
        return "edit{" +
                "id=" + id +
                ", info='" + info + '\'' +
                '}';
    }
}
