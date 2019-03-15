package com.ciaranchapman.vgc.entity;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.annotations.GenericGenerator;

import javax.ejb.Local;
import javax.persistence.*;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Date;

@Entity(name = "Platform")
@Table(name = "Platform")
public class Platform
{
    // Instance Variables

    //private Logger logger = LogManager.getLogger(this.getClass());

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "name")
    private String name;

    public Platform()
    {

    }

    public Platform(String name)
    {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}