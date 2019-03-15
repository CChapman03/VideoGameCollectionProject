package com.ciaranchapman.vgc.persistence;

import com.ciaranchapman.vgc.entity.Platform;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class PlatformTest
{
    private GenericDao dao;
    private List<Platform> platforms;

    @Before
    public void setup() throws Exception
    {
        this.dao = new GenericDao(Platform.class);
        this.platforms = dao.getAll();
    }

    @Test
    public void testGetAllGames()
    {
        assertTrue(platforms.size() > 0);
        assertFalse(platforms.get(0).getName().equals(""));
    }

    @Test
    public void testUpdateGame() throws Exception
    {
        Platform platform = platforms.get(0);
        int id = platform.getId();

        String updatedName = "PS1";
        String currentName = platform.getName();

        platform.setName(platform.getName() + updatedName);
        dao.saveOrUpdate(platform);
        Platform updatedPlatform = (Platform) dao.getById(id);

        assertEquals(platform, updatedPlatform);
    }

    @Test
    public void testDeleteGame() throws Exception
    {
        int currentSize = platforms.size();
        Platform platformToDelete = platforms.get(0);
        int id = platformToDelete.getId();

        dao.delete(platformToDelete);

        int sizeAfterDelete = dao.getAll().size();

        Platform deletedPlatform = (Platform) dao.getById(id);

        assertEquals(currentSize - 1, sizeAfterDelete);
        assertNull(deletedPlatform);
    }

    @Test
    public void testAddGame() throws Exception
    {
        int insertedPlatformId = 0;

        Platform platformToAdd = new Platform();
        platformToAdd.setName("PS1");

        insertedPlatformId = dao.insert(platformToAdd);
        Platform retrievedGame = (Platform) dao.getById(insertedPlatformId);

        assertTrue(insertedPlatformId > 0);
        assertEquals(platformToAdd, retrievedGame);
    }
}
