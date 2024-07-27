<%-- 
    Document   : header
    Created on : Jul 22, 2024, 9:37:51 PM
    Author     : LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="right">
    <div class="top">
        <button id="menu_bar">
            <span class="material-symbols-sharp">menu</span>
        </button>
        <div class="theme-toggle">
            <span class="material-symbols-sharp active">light_mode</span>
            <span class="material-symbols-sharp">dark_mode</span>
        </div>
        <div class="profile">
            <div class="info">
                <p>
                    <b>Long</b>
                </p>
                <p>admin</p>
                <small class="text-muted"></small>
            </div>
            <div class="profile-photo">
                <image src="" alt="thumb"/>
            </div>
        </div>
    </div>

    <div class="recent-updates">
        <h2>Recent Update</h2>
        <div class="updates">
            <div class="update">
                <div class="profile-photo">
                    <image src="" alt="thumb"/>
                </div>
                <div class="message">
                    <p>
                        <b>Long</b>
                        update status
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="sale-analytics">
        <h2>Sale Analytics</h2>
        <div class="item onlion">
            <div class="icon">
                <span class="material-symbols-sharp">shopping_cart</span>
            </div>
            <div class="right-text">
                <div class="info">
                    <h3>Onlion order</h3>
                    <small class="text-muted">Last seen 2 hour</small>
                </div>
                <h5 class="danger">-17%</h5>
                <h3>5555</h3>
            </div>
        </div>
    </div>
    <div class="item add-product">
        <div>
            <span class="material-symbols-sharp">add</span>
        </div>
    </div>
</div>