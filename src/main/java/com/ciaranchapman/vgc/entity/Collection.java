package com.ciaranchapman.vgc.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "Collection")
@Table(name = "Collection")
public class Collection
{
    // Instance Variables

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "collection_id")
    private int collectionID;

    @OneToMany(cascade=CascadeType.ALL, fetch = FetchType.EAGER)
    @Column(name = "game_id", nullable = false)
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

    public int getCollectionID()
    {
        return collectionID;
    }

    public void setCollectionID(int collectionID)
    {
        this.collectionID = collectionID;
    }
}
