/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dtl.controllers;

import com.dtl.services.CategoryService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author LONG
 */
@Controller
public class CategoryController {
    @Autowired
    private CategoryService categoryService;
    
    @RequestMapping("/category")
    @Transactional
    public String categoryView(Model model, @RequestParam Map<String, String> params){
        model.addAttribute("category", this.categoryService.getCategory(params));
        model.addAttribute("page_name", "category");

        return "category";
    }
}
