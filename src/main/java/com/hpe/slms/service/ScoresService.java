package com.hpe.slms.service;

import com.hpe.slms.pojo.Scores;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ScoresService {
    public List<Scores> getScores(int stuid);
}
