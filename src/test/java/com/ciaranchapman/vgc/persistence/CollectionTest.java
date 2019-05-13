package com.ciaranchapman.vgc.persistence;

import com.ciaranchapman.vgc.entity.Collection;
import com.ciaranchapman.vgc.entity.Game;
import com.ciaranchapman.vgc.test.util.DatabaseUtility;
import org.junit.Before;
import org.junit.Test;

import java.util.*;

import static org.junit.Assert.*;

public class CollectionTest
{
    private GenericDao dao;
    private Collection collection;
    private DatabaseUtility databaseUtility;

    @Before
    public void setup() throws Exception
    {
        this.dao = new GenericDao(Collection.class);
        databaseUtility = new DatabaseUtility();
        databaseUtility.runSQL("cleandb.sql");
        databaseUtility.runSQL("createTestData.sql");
        this.collection = (Collection) dao.getById(0);
    }

    @Test
    public void testAddGameToCollection() throws Exception
    {
        Collection collection = this.collection;
        int id = collection.getId();

        Game gameToAdd = new Game();
        gameToAdd.setName("Rayman 2: The Great Escape");

        Game currentGame = (Game)collection.getGames().toArray()[0];

        collection.getGames().add(gameToAdd);
        dao.saveOrUpdate(collection);
        Collection updatedCollection = (Collection) dao.getById(id);

        assertEquals(collection, updatedCollection);
    }

    @Test
    public void testReadCollection() throws Exception
    {
        assertNotNull(collection);
        assertFalse(collection.getGames().isEmpty());
    }

    @Test
    public void testUpdateCollection() throws Exception
    {
        Collection collection = this.collection;
        int id = collection.getId();

        Game updatedGame = new Game();
        updatedGame.setName("Pokemon Ruby Version");

        Game currentGame = collection.getGames().stream().findFirst().get();

        Set<Game> currentGamesList = collection.getGames();
        Set<Game> updatedGamesList = currentGamesList;

        List<Game> gamesList = new ArrayList<>();
        Collections.addAll(gamesList, (Game[]) currentGamesList.toArray());

        gamesList.set(0, updatedGame);

        collection.setGames(new HashSet<>(gamesList));
        dao.saveOrUpdate(collection);
        Collection updatedCollection = (Collection) dao.getById(id);

        assertEquals(collection, updatedCollection);
    }

    @Test
    public void testDeleteGameFromCollection()
    {
        Collection collection = this.collection;
        int id = collection.getId();

        int collectionSizeBeforeDel = collection.getGames().size();

        int gameIndexToDelete = 0;
        Game gameToDelete = (Game) collection.getGames().toArray()[gameIndexToDelete];


        dao.delete(gameToDelete);
        Collection updatedCollection = (Collection) dao.getById(id);

        assertNull(gameToDelete);
        assertEquals(collectionSizeBeforeDel - 1, updatedCollection.getGames().size());
    }
}
