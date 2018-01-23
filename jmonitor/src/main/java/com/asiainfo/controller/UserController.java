package com.asiainfo.controller;

import com.asiainfo.pojo.User;
import com.asiainfo.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;



import javax.annotation.Resource;

/**
 * Created by jiangtao on 2018/1/22.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private IUserService userService;

    @RequestMapping("/showUser")
    public String toIndex(HttpServletRequest request,Model model){
        int userId = Integer.parseInt(request.getParameter("id"));
        User user = this.userService.getUserById(userId);
        model.addAttribute("user", user);
        System.out.println(model);
        System.out.println(user.getUser_name());
        return "showUser";
    }
}
