package com.ciaranchapman.vgc.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "User")
@Table(name = "User")
public class User
{
    // Instance Variables

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "username")
    private String username;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "avatar")
    private String avatar;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "collection_id", nullable = false)
    private Collection collection;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "wishlist_id", nullable = false)
    private Collection wishlist;

    public User()
    {

    }

    public User(String username, String email, String password, Collection collection, String avatar)
    {
        this.username = username;
        this.email = email;
        this.password = password;
        this.collection = collection;
        this.avatar = avatar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Collection getCollection() {
        return collection;
    }

    public void setCollection(Collection collection) {
        this.collection = collection;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
