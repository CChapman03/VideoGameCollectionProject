package com.ciaranchapman.vgc.entity;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.annotations.GenericGenerator;

import javax.ejb.Local;
import javax.persistence.*;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.Set;

@Entity(name = "Collection")
@Table(name = "Collection")
public class Collection
{
    // Instance Variables

    private Logger logger = LogManager.getLogger(this.getClass());

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @OneToMany(mappedBy="Collection")
    private Set<Game> games;

    // Constructor(s)

    public Collection()
    {

    }

    public Collection(Set<Game> games)
    {
        this.games = games;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Set<Game> getGames() {
        return games;
    }

    public void setGames(Set<Game> games) {
        this.games = games;
    }
}
