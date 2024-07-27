/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dtl.springclothshop;

/**
 *
 * @author LONG
 */
public class SidebarItem {

    private String name;
    private String path;
    private String icon;
    private String text;

    public SidebarItem(String name, String path, String icon, String text) {
        this.name = name;
        this.path = path;
        this.icon = icon;
        this.text = text;
    }

    public String getName() {
        return name;
    }

    public String getIcon() {
        return icon;
    }

    public String getPath() {
        return path;
    }

    public String getText() {
        return text;
    }
}
