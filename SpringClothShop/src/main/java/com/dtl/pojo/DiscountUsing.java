/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dtl.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author LONG
 */
@Entity
@Table(name = "discount_using")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "DiscountUsing.findAll", query = "SELECT d FROM DiscountUsing d"),
    @NamedQuery(name = "DiscountUsing.findById", query = "SELECT d FROM DiscountUsing d WHERE d.id = :id"),
    @NamedQuery(name = "DiscountUsing.findByCreatedDate", query = "SELECT d FROM DiscountUsing d WHERE d.createdDate = :createdDate"),
    @NamedQuery(name = "DiscountUsing.findByUpdatedDate", query = "SELECT d FROM DiscountUsing d WHERE d.updatedDate = :updatedDate")})
public class DiscountUsing implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 36)
    @Column(name = "id")
    private String id;
    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdDate;
    @Column(name = "updated_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedDate;
    @JoinColumn(name = "category_id", referencedColumnName = "id")
    @ManyToOne
    private Category categoryId;
    @JoinColumn(name = "discount_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Discount discountId;
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    @ManyToOne
    private Product productId;
    @JoinColumn(name = "subcategory_id", referencedColumnName = "id")
    @ManyToOne
    private Subcategory subcategoryId;

    public DiscountUsing() {
    }

    public DiscountUsing(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(Date updatedDate) {
        this.updatedDate = updatedDate;
    }

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

    public Discount getDiscountId() {
        return discountId;
    }

    public void setDiscountId(Discount discountId) {
        this.discountId = discountId;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public Subcategory getSubcategoryId() {
        return subcategoryId;
    }

    public void setSubcategoryId(Subcategory subcategoryId) {
        this.subcategoryId = subcategoryId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DiscountUsing)) {
            return false;
        }
        DiscountUsing other = (DiscountUsing) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dtl.pojo.DiscountUsing[ id=" + id + " ]";
    }
    
}
