package ua.training.springboot.task2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
    @RequestMapping(value = {"/", "/login"}, method =RequestMethod.GET)
    public String indexPage(){
        return "login";
    }

    @RequestMapping (value = {"/TaxDeclarationFilling/"}, method = RequestMethod.GET)
    public String declarationFilling(){
        return "declaration";
    }

    @RequestMapping (value = "/declaration_check/")
    public String declarationCheck(){

        return "declaration_check";
    }

    @RequestMapping (value = "/admin/")
    public String admin(){
        return "admin";
    }
}
