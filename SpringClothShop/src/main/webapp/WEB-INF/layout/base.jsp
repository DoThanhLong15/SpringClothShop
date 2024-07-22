<%-- 
    Document   : base
    Created on : Jul 22, 2024, 9:37:45 PM
    Author     : LONG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="<c:url value="/css/main.css" />">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
    </head>
    <body>
        <div class="container">
            <tiles:insertAttribute name="aside" />
            
            <tiles:insertAttribute name="content" />
            
            <tiles:insertAttribute name="right" />
        </div>
    </body>
</html>