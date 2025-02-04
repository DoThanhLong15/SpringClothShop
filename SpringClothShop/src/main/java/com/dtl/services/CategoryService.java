/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dtl.services;

import com.dtl.pojo.Category;
import java.util.List;
import java.util.Map;

/**
 *
 * @author LONG
 */
public interface CategoryService {
    List<Category> getCategory(Map<String, String> params);
    void addOrUpdate(Category c);
}
