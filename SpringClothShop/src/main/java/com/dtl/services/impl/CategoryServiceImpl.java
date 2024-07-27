/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dtl.services.impl;

import com.dtl.pojo.Category;
import com.dtl.repository.CategoryRepository;
import com.dtl.services.CategoryService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author LONG
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    private CategoryRepository categoryRepo;

    @Override
    public List<Category> getCategory(Map<String, String> params) {
        return this.categoryRepo.getCategory(params);
    }

    @Override
    public void addOrUpdate(Category c) {
        this.categoryRepo.addOrUpdate(c);
    }
    
}
