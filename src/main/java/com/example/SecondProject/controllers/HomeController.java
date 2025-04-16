package com.example.SecondProject.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        var name = "Іван";
        var show = true;
        var listOfFruits = List.of("Apple", "Banana", "Orange");
        var listOfNumbers = List.of(10, 20, 30, 40);

        model.addAttribute("name", name);
        model.addAttribute("show", show);
        model.addAttribute("items", listOfFruits);
        model.addAttribute("numbers", listOfNumbers);
        return "home";
    }
}
