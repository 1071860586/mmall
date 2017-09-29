package com.hpe.slms.pojo;

public class Scores {
    private Integer id;

    private Integer stuid;

    private String coursename;

    private Double proscore;

    private Double examscore;

    private Double totalscore;

    private String createtime;

    public Scores(Integer id, Integer stuid, String coursename, Double proscore, Double examscore, Double totalscore, String createtime) {
        this.id = id;
        this.stuid = stuid;
        this.coursename = coursename;
        this.proscore = proscore;
        this.examscore = examscore;
        this.totalscore = totalscore;
        this.createtime = createtime;
    }

    public Scores() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStuid() {
        return stuid;
    }

    public void setStuid(Integer stuid) {
        this.stuid = stuid;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename == null ? null : coursename.trim();
    }

    public Double getProscore() {
        return proscore;
    }

    public void setProscore(Double proscore) {
        this.proscore = proscore;
    }

    public Double getExamscore() {
        return examscore;
    }

    public void setExamscore(Double examscore) {
        this.examscore = examscore;
    }

    public Double getTotalscore() {
        return totalscore;
    }

    public void setTotalscore(Double totalscore) {
        this.totalscore = totalscore;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }
}