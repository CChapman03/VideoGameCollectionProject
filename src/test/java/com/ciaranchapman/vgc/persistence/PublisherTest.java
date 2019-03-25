package com.ciaranchapman.vgc.persistence;

import com.ciaranchapman.vgc.entity.Publisher;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class PublisherTest
{
    private GenericDao dao;
    private List<Publisher> publishers;

    @Before
    public void setup() throws Exception
    {
        this.dao = new GenericDao(Publisher.class);
        this.publishers = dao.getAll();
    }

    @Test
    public void testAllPublishers() throws Exception
    {
        assertTrue(publishers.size() > 0);
        assertFalse(publishers.get(0).getName().equals(""));
    }

    @Test
    public void testUpdatePublisher() throws Exception
    {
        Publisher publisher = publishers.get(0);
        int id = publisher.getId();

        String updatedName = "Square Enix";
        String currentName = publisher.getName();

        publisher.setName(publisher.getName() + updatedName);
        dao.saveOrUpdate(publisher);
        Publisher updatedPublisher = (Publisher) dao.getById(id);

        assertEquals(publisher, updatedPublisher);
    }

    @Test
    public void testDeletePublisher() throws Exception
    {
        int currentSize = publishers.size();
        Publisher publisherToDelete = publishers.get(0);
        int id = publisherToDelete.getId();

        dao.delete(publisherToDelete);

        int sizeAfterDelete = dao.getAll().size();

        Publisher deletedPublisher = (Publisher) dao.getById(id);

        assertEquals(currentSize - 1, sizeAfterDelete);
        assertNull(deletedPublisher);
    }

    @Test
    public void testAddPublisher() throws Exception
    {
        int insertedPublisherId = 0;

        Publisher publisherToAdd = new Publisher();
        publisherToAdd.setName("Ubisoft");

        insertedPublisherId = dao.insert(publisherToAdd);
        Publisher retrievedPublisher = (Publisher) dao.getById(insertedPublisherId);

        assertTrue(insertedPublisherId > 0);
        assertEquals(publisherToAdd, retrievedPublisher);
    }
}
