package com.assignment.dojoninjas.controllers;

import com.assignment.dojoninjas.models.Dojo;
import com.assignment.dojoninjas.models.Ninja;
import com.assignment.dojoninjas.services.DojoNinjaService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
public class DojoNinjaController {
    private final DojoNinjaService dojoNinjaService;

    public DojoNinjaController(DojoNinjaService dojoNinjaService) {
        this.dojoNinjaService = dojoNinjaService;
    }
    @RequestMapping("/")
    public String Index() {
        return "redirect:/dojos";
    }
    @RequestMapping("/dojos")
    public String dojoIndex(Model model) {
        model.addAttribute("dojos", dojoNinjaService.allDojos());
        return "/dojos/index.jsp";
    }
    @RequestMapping("/dojos/{id}")
    public String Show(@PathVariable("id") Long id, Model model) {
        model.addAttribute("dojo", this.dojoNinjaService.findDojo(id));
        return "/dojos/show.jsp";
    }
    @RequestMapping("/dojos/new")
    public String New(@ModelAttribute("dojo") Dojo dojo) {
        return "/dojos/new.jsp";
    }
    @RequestMapping(value="/dojos", method=RequestMethod.POST)
    public String Create(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
        if(result.hasErrors())
            return "/dojos/new.jsp";
        this.dojoNinjaService.createDojo(dojo);
        return "redirect:/dojos";
    }
    @RequestMapping("/ninjas")
    public String ninjaIndex(Model model) {
        model.addAttribute("ninjas", this.dojoNinjaService.allNinjas());
        return "/ninjas/index.jsp";
    }
    @RequestMapping("/ninjas/new")
    public String New(@ModelAttribute("ninja") Ninja ninja, Model model) {
        model.addAttribute("dojos", this.dojoNinjaService.allDojos());
        return "/ninjas/new.jsp";
    }
    @RequestMapping(value="/ninjas", method=RequestMethod.POST)
    public String Create(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
        if(result.hasErrors()) {
            model.addAttribute("dojos", this.dojoNinjaService.allDojos());
            return "/ninjas/new.jsp";
        }
        this.dojoNinjaService.createNinja(ninja);
        return "redirect:/ninjas";
    }


}
