/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dtl.controllers;

import com.dtl.springclothshop.SidebarItem;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 *
 * @author LONG
 */
@Controller
@ControllerAdvice
public class HomeController {

    @ModelAttribute
    public void commonAttributes(Model model) {
        List<SidebarItem> sidebarItem = new ArrayList<>();
        sidebarItem.add(new SidebarItem("home", "/", "grid_view", "Dashboard"));
        sidebarItem.add(new SidebarItem("category", "/category", "category", "Danh mục"));
        sidebarItem.add(new SidebarItem("logout", "/", "logout", "Đăng xuất"));
        
        model.addAttribute("sidebarItem", sidebarItem);
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("page_name", "home");
        
        return "home";
    }
}
