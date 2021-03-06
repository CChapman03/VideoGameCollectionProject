package com.ciaranchapman.vgc.persistence;

import com.ciaranchapman.vgc.entity.Game;
import com.ciaranchapman.vgc.entity.Wishlist;
import com.ciaranchapman.vgc.test.util.DatabaseUtility;
import org.junit.Before;
import org.junit.Test;

import java.util.*;

import static org.junit.Assert.*;

public class WishlistTest
{
    private GenericDao dao;
    private Wishlist wishlist;
    private DatabaseUtility databaseUtility;

    @Before
    public void setup() throws Exception
    {
        this.dao = new GenericDao(Collection.class);
        databaseUtility = new DatabaseUtility();
        databaseUtility.runSQL("cleandb.sql");
        databaseUtility.runSQL("createTestData.sql");
        this.wishlist = (Wishlist) dao.getById(0);
    }

    @Test
    public void testAddGameToCollection() throws Exception
    {
        Wishlist wishlist = this.wishlist;
        int id = wishlist.getId();

        Game gameToAdd = new Game();
        gameToAdd.setName("Rayman 2: The Great Escape");

        Game currentGame = wishlist.getGames().stream().findFirst().get();

        wishlist.getGames().add(gameToAdd);
        dao.saveOrUpdate(wishlist);
        Wishlist updatedWishlist = (Wishlist) dao.getById(id);

        assertEquals(wishlist, updatedWishlist);
    }

    @Test
    public void testGetCollection() throws Exception
    {
        assertNull(wishlist);
        assertFalse(wishlist.getGames().isEmpty());
    }

    @Test
    public void testUpdateCollection() throws Exception
    {
        Wishlist wishlist = this.wishlist;
        int id = wishlist.getId();

        Game updatedGame = new Game();
        updatedGame.setName("Pokemon Ruby Version");

        Game currentGame = wishlist.getGames().stream().findFirst().get();

        Set<Game> currentGamesList = wishlist.getGames();
        Set<Game> updatedGamesList = currentGamesList;

        List<Game> gamesList = new ArrayList<>();
        Collections.addAll(gamesList, (Game[]) currentGamesList.toArray());

        gamesList.set(0, updatedGame);

        wishlist.setGames(new HashSet<>(gamesList));
        dao.saveOrUpdate(wishlist);
        Wishlist updatedWishlist = (Wishlist) dao.getById(id);

        assertEquals(wishlist, updatedWishlist);
    }

    @Test
    public void testDeleteGameFromWishlist()
    {
        Wishlist wishlist = this.wishlist;
        int id = wishlist.getId();

        int wishlistSizeBeforeDel = wishlist.getGames().size();

        int gameIndexToDelete = 0;
        Game gameToDelete = (Game) wishlist.getGames().toArray()[gameIndexToDelete];


        dao.delete(gameToDelete);
        Wishlist updatedWishlist = (Wishlist) dao.getById(id);

        assertNull(gameToDelete);
        assertEquals(wishlistSizeBeforeDel - 1, updatedWishlist.getGames().size());
    }
}
