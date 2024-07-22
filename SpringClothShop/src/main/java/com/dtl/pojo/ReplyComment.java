/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dtl.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author LONG
 */
@Entity
@Table(name = "reply_comment")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ReplyComment.findAll", query = "SELECT r FROM ReplyComment r"),
    @NamedQuery(name = "ReplyComment.findById", query = "SELECT r FROM ReplyComment r WHERE r.id = :id")})
public class ReplyComment implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 36)
    @Column(name = "id")
    private String id;
    @JoinColumn(name = "reply_on_comment_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Comment replyOnCommentId;
    @JoinColumn(name = "comment_id", referencedColumnName = "id")
    @OneToOne(optional = false)
    private Comment commentId;

    public ReplyComment() {
    }

    public ReplyComment(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Comment getReplyOnCommentId() {
        return replyOnCommentId;
    }

    public void setReplyOnCommentId(Comment replyOnCommentId) {
        this.replyOnCommentId = replyOnCommentId;
    }

    public Comment getCommentId() {
        return commentId;
    }

    public void setCommentId(Comment commentId) {
        this.commentId = commentId;
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
        if (!(object instanceof ReplyComment)) {
            return false;
        }
        ReplyComment other = (ReplyComment) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dtl.pojo.ReplyComment[ id=" + id + " ]";
    }
    
}
