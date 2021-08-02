package com.finalprj.doldolseo.controller;

import com.finalprj.doldolseo.vo.Plan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class TestController {

    @GetMapping(value="/main")
    public String hello(@RequestParam(value="name", defaultValue = "world") String name, Model model){
        model.addAttribute("name", name);
        return "main";
    }

    @GetMapping(value="/areaList")
    public String areaList(){
        return "area/areaList";
    }

    @GetMapping(value="/areaDetail")
    public String areaDetail(){
        return "area/areaDetail";
    }

    @RequestMapping("/memberJR")
    public String test() throws Exception{
        return "/member/memberJoinResult";
    }

    @RequestMapping("/memberJ")
    public String test2() throws Exception{
        return "/member/memberJoin";
    }

    @RequestMapping("/memberL")
    public String test3() throws Exception{
        return "/member/memberLogin";
    }

    @RequestMapping("/memberP")
    public String test0() throws Exception{
        return "/member/memberPolicy";
    }

    @RequestMapping("/memberR")
    public String test10() throws Exception{
        return "/member/memberRule";
    }

    @RequestMapping("/planD")
    public String test4() throws Exception{
        return "/mypage/plan/planDetail";
    }

    @RequestMapping("/pop")
    public String test5() throws Exception{
        return "/mypage/plan/popup_planInsert";
    }

    @RequestMapping("/planI")
    public String test6() throws Exception{
        return "/mypage/plan/planInsert";
    }

    @RequestMapping("/planL")
    public String test7() throws Exception{
        return "/mypage/plan/planList";
    }

    @RequestMapping("/mypageD")
    public String test8() throws Exception{
        return "/mypage/mypageDetail";
    }
    @RequestMapping("/")
    public String test15() throws Exception{
        return "/test";
    }

    @RequestMapping(value="/test.do", method = RequestMethod.GET)
    @ResponseBody
    public void testMethod(Plan plan, @RequestParam(value = "num[]") int[] num, @RequestParam(value = "place[]") String[] place,@RequestParam(value = "day[]") String[] day){

        for(int i=0;i<num.length;i++){
            plan.setNum(num[i]);
            plan.setPlace(place[i]);
            plan.setDay(day[i]);

            System.out.println(plan.getPlace());
            System.out.println(plan.getNum());
            System.out.println(plan.getDay());
        }
    }

    @RequestMapping(value="/plantest.do", method = RequestMethod.POST)
    @ResponseBody
    public void planTestMethod(@RequestParam(value = "date[]") String[] date,@RequestParam(value = "place[]") String[] place,@RequestParam(value = "plan_intro[]") String[] plan_intro,@RequestParam(value = "y[]") String[] y,@RequestParam(value = "x[]") String[] x,@RequestParam(value = "time[]") String[] time){

        for(int num=0;num<date.length;num++){
            System.out.println(date[num] + " " + place[num] + " " + plan_intro[num] + " " + y[num] + " " + x[num] + " " + time[num]);
        }

    }

    //test by 김경일
    @RequestMapping("/review")
    public String test16() throws Exception{
        return "/review/reviewList";
    }

    @RequestMapping("/reviewD")
    public String test17() throws Exception{
        return "/review/reviewDetail";
    }

    @RequestMapping("/reviewI")
    public String test18() throws Exception{
        return "/review/reviewInsert";
    }

    @RequestMapping("/reviewU")
    public String test19() throws Exception{
        return "/review/reviewUpdate";
    }

    @RequestMapping("/crewL")
    public String test20() throws Exception{
        return "/crew/crewList";
    }

    @RequestMapping("/crewD")
    public String test21() throws Exception{
        return "/crew/crewDetail";
    }

    @RequestMapping("/crewI")
    public String test22() throws Exception{
        return "/crew/crewInsert";
    }

    @RequestMapping("/crewM")
    public String test23() throws Exception{
        return "/crew/crewManage";
    }

    @RequestMapping("/crewBoardL")
    public String test24() throws Exception{
        return "/crew/crewBoard/crewBoardList";
    }

    @RequestMapping("/crewBoardD")
    public String test25() throws Exception{
        return "/crew/crewBoard/crewBoardDetail";
    }

    @RequestMapping("/crewBoardI")
    public String test26() throws Exception{
        return "/crew/crewBoard/crewBoardInsert";
    }

    @RequestMapping("/crewBoardU")
    public String test27() throws Exception{
        return "/crew/crewBoard/crewBoardUpdate";
    }
}
