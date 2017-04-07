package com.sveticov;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by SETICOV on 01.04.2017.
 */
@RestController
public class ControllerStart {
    @Autowired
    TextMsg textMsg;
    @Autowired
    TextDAO textDATA;

    @RequestMapping("/")
    public ModelAndView homepage() {
        return new ModelAndView("index");
    }

    @GetMapping(value = "/task_7", produces = "application/json")
    public TextMsg home() {
        String txt = "only test my controller";
        int id = 10987456;
        textMsg.setText(txt);
        textMsg.setId_task(id);
        return textMsg;
    }

    @PostMapping(value = "/task_write_7")
    public
    @ResponseBody
    TextMsg postTextMsg(@RequestBody TextMsg textMsg) {
        this.textMsg = textMsg;
        textDATA.save(textMsg);
        return textMsg;
    }

    @GetMapping(value = "/task_get")//,produces = "application/json"
    public TextMsg textMsg() {
        System.out.println(textMsg.toString());
        return textMsg;
    }

    @GetMapping(value = "/task_list")
    public Set<TextMsg> listShow() {
//        Set<TextMsg> list = new HashSet<TextMsg>();
//        list = textDATA.visi();
        return textDATA.visi();

    }


}

