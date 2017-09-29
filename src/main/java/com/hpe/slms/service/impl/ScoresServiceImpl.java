package com.hpe.slms.service.impl;

import com.hpe.slms.mapper.ScoresMapper;
import com.hpe.slms.pojo.Scores;
import com.hpe.slms.service.ScoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ScoresServiceImpl implements ScoresService {

@Autowired
    ScoresMapper scoresMapper;
    @Override
    public List<Scores> getScores(int stuid) {

        return scoresMapper.changePhoto(stuid);
    }
}
