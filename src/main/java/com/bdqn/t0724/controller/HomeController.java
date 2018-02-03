package com.bdqn.t0724.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String index(HttpServletRequest request,Model model) {

        model.addAttribute("account",request.getUserPrincipal().getName());

        return "home-page";
    }
}
