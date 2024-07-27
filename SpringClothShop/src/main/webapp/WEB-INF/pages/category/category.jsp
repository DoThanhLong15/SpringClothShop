<%-- 
    Document   : category
    Created on : Jul 26, 2024, 9:16:02 PM
    Author     : LONG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<main>
    <h1 class="page-title">Danh mục sản phẩm</h1>

    <div class="table-view">
        <table>
            <thead>
                <tr>
                    <td>Mã danh mục</td>
                    <td>Tên danh mục</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${category}">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.name}</td>
                        <td class="primary">Chi tiết</td>
                        <td class="warning">Chỉnh sửa</td>
                        <td class="danger">Xóa</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</main>
