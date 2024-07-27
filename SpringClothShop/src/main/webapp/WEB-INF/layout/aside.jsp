<%-- 
    Document   : footer
    Created on : Jul 22, 2024, 9:37:57 PM
    Author     : LONG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<aside>
    <div class="top">
        <div class="logo">
            <h2><span class="danger">Cloth </span>Shop</h2>
        </div>

        <div class="close">
            <span class="material-symbols-sharp">close</span>
        </div>
    </div>

    <div class="sidebar">
        <c:forEach items="${sidebarItem}" var="item">
            <a href="<c:url value="${item.path}"/>" class="<c:if test="${item.name == page_name}">active</c:if>">
                <span class="material-symbols-sharp">${item.icon}</span>
                <h3>${item.text}</h3>
            </a>
        </c:forEach>
        <!--
                    <span class="material-symbols-sharp">grid_view</span>
                    <h3>Dashboard</h3>
                </a>
        
                <a href="#">
                    <span class="material-symbols-sharp">category</span>
                    <h3>Danh mục</h3>
                </a>
        
                <a href="#">
                    <span class="material-symbols-sharp">apparel</span>
                    <h3>Quần áo</h3>
                </a>
        
                <a href="#">
                    <span class="material-symbols-sharp">logout</span>
                    <h3>Đăng xuất</h3>
                </a>-->
    </div>
</aside>