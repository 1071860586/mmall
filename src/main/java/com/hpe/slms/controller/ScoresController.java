package com.hpe.slms.controller;

import com.hpe.slms.pojo.Scores;
import com.hpe.slms.service.ScoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ScoresController {
    @Autowired
    ScoresService scoresService;
    private static int stuid;
   @RequestMapping(value = "changePhoto",method = RequestMethod.POST)
   @ResponseBody
    public String changePhote(int stuid){

       this.stuid=stuid;
       System.out.print("+=++++++++++++++++"+stuid);
     return String.valueOf(1);
   }

    @RequestMapping(value = "jj",method = RequestMethod.POST)
    @ResponseBody
    public List<Scores> changeScore(){
        System.out.print("+=++++++++++++++++"+stuid);
        return  scoresService.getScores(stuid);
    }
}
