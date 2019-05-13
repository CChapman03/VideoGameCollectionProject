package com.ciaranchapman.vgc.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "Wishlist")
@Table(name = "Wishlist")
public class Wishlist
{
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "wishlist_id", nullable = false)
    private Wishlist wishlist;

    @OneToMany(mappedBy= "wishlists")
    @Column(name = "game_id", nullable = false)
    private Set<Game> games;

    public Wishlist()
    {

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
