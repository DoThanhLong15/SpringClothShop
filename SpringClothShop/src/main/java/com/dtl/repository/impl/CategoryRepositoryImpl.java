/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dtl.repository.impl;

import com.dtl.pojo.Category;
import com.dtl.repository.CategoryRepository;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author LONG
 */
@Repository
@Transactional
public class CategoryRepositoryImpl implements CategoryRepository {

    private static final int PAGE_SIZE = 4;

    @Autowired
    private LocalSessionFactoryBean factory;

    @Override
    public List<Category> getCategory(Map<String, String> params) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Category> query = builder.createQuery(Category.class);
        Root root = query.from(Category.class);

        query.select(root);

        String page = "";
        if (params != null) {
            String kw = params.get("keyword");
            if (kw != null && !kw.isEmpty()) {
                Predicate p = builder.like(root.get("name"), String.format("%%%s%%", kw));
            }

            page = params.get("page");

        }

        Query q = session.createQuery(query);

        if (page != null && !page.isEmpty()) {
            int p = Integer.parseInt(page);
            int start = (p - 1) * PAGE_SIZE;

            q.setFirstResult(start);
            q.setMaxResults(PAGE_SIZE);
        }
        return q.getResultList();
    }

    @Override
    public void addOrUpdate(Category c) {
        Session s = this.factory.getObject().getCurrentSession();

        if (c.getId() != null) {
            s.update(c);
        } else {
            s.save(c);
        }
    }

}
