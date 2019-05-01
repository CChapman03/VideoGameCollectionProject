package com.ciaranchapman.vgc.entity;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "Publisher")
@Table(name = "Publisher")
public class Publisher
{
    // Instance Variables

    //private Logger logger = LogManager.getLogger(this.getClass());

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "name")
    private String name;

    // Constructor(s)

    public Publisher()
    {

    }

    public Publisher(String name)
    {
        this.name = name;
    }

    // Getters and setters

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
