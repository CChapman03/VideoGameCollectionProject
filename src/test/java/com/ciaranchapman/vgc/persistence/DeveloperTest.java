package com.ciaranchapman.vgc.persistence;

import com.ciaranchapman.vgc.entity.Developer;
import com.ciaranchapman.vgc.test.util.DatabaseUtility;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class DeveloperTest
{
    private GenericDao dao;
    private List<Developer> developers;
    private DatabaseUtility databaseUtility;

    @Before
    public void setup() throws Exception
    {
        this.dao = new GenericDao(Developer.class);
        databaseUtility = new DatabaseUtility();
        databaseUtility.runSQL("cleandb.sql");
        databaseUtility.runSQL("createTestData.sql");
        this.developers = dao.getAll();
    }

    @Test
    public void testAddDeveloper() throws Exception
    {
        int insertedDeveloperId = 0;

        Developer developerToAdd = new Developer();
        developerToAdd.setName("Insomniac Games");

        insertedDeveloperId = dao.insert(developerToAdd);
        Developer retrievedDeveloper = (Developer) dao.getById(insertedDeveloperId);

        assertTrue(insertedDeveloperId > 0);
        assertEquals(developerToAdd, retrievedDeveloper);
    }

    @Test
    public void testAllDevelopers() throws Exception
    {
        assertTrue(developers.size() > 0);
        assertFalse(developers.get(0).getName().equals(""));
    }

    @Test
    public void testUpdateDeveloper() throws Exception
    {
        Developer developer = developers.get(0);
        int id = developer.getId();

        String updatedName = "Naughty Dog";
        String currentName = developer.getName();

        developer.setName(developer.getName() + updatedName);
        dao.saveOrUpdate(developer);
        Developer updatedDeveloper = (Developer) dao.getById(id);

        assertEquals(developer, updatedDeveloper);
    }

    @Test
    public void testDeleteDeveloper() throws Exception
    {
        int currentSize = developers.size();
        Developer developerToDelete = developers.get(0);
        int id = developerToDelete.getId();

        dao.delete(developerToDelete);

        int sizeAfterDelete = dao.getAll().size();

        Developer deletedDeveloper = (Developer) dao.getById(id);

        assertEquals(currentSize - 1, sizeAfterDelete);
        assertNull(deletedDeveloper);
    }
}
