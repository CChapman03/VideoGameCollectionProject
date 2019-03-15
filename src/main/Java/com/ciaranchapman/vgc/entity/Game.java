package com.ciaranchapman.vgc.entity;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.annotations.GenericGenerator;

import javax.ejb.Local;
import javax.persistence.*;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Date;

@Entity(name = "Game")
@Table(name = "Game")
public class Game
{
    // Instance Variables

    //Logger logger = LogManager.getLogger(this.getClass());

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "name")
    private String name;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "platform_id", nullable = false)
    private Platform platform;

    @Column(name = "releasedate")
    private Date releaseDate;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "developer_id", nullable = false)
    private Developer developer;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "publisher_id", nullable = false)
    private Publisher publisher;

    @Column(name = "players")
    private int players;

    @Column(name = "genre")
    private String genre;

    @Column(name = "rating")
    private String rating;

    @Column(name = "description")
    private String description;

    @Column(name = "artwork")
    private String artwork;

    // Constructor

    public Game()
    {

    }

    public Game(String name, Platform platform, Date releaseDate, Developer developer,
                Publisher publisher, int players, String genre, String rating, String description)
    {
        this.name = name;
        this.platform = platform;
        this.releaseDate = releaseDate;
        this.developer = developer;
        this.publisher = publisher;
        this.players = players;
        this.genre = genre;
        this.rating = rating;
        this.description = description;
    }

    // Getters and Setters

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

    public Platform getPlatform() {
        return platform;
    }

    public void setPlatform(Platform platform) {
        this.platform = platform;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Developer getDeveloper() {
        return developer;
    }

    public void setDeveloper(Developer developer) {
        this.developer = developer;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    public int getPlayers() {
        return players;
    }

    public void setPlayers(int players) {
        this.players = players;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getArtwork() {
        return artwork;
    }

    public void setArtwork(String artwork) {
        this.artwork = artwork;
    }

    public String toString()
    {
        return "Game: {" +
                "name: '" + this.name + "'" +
                "platform: '" + this.platform + "'" +
                "releasedate: '" + this.releaseDate + "'" +
                "developer: '" + this.developer + "'" +
                "publisher: '" + this.publisher + "'" +
                "players: '" + this.players + "'" +
                "genre: '" + this.genre + "'" +
                "rating: '" + this.rating + "'" +
                "description: '" + this.description + "'" +
                "}";
    }
}