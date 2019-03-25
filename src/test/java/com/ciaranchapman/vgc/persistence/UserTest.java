package com.ciaranchapman.vgc.persistence;

import com.ciaranchapman.vgc.entity.User;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class UserTest
{
    private GenericDao dao;
    private List<User> users;

    @Before
    public void setup() throws Exception
    {
        this.dao = new GenericDao(User.class);
        this.users = dao.getAll();
    }

    @Test
    public void testAllUsers() throws Exception
    {
        assertTrue(users.size() > 0);
        assertFalse(users.get(0).getUsername().equals(""));
    }

    @Test
    public void testUpdateUser() throws Exception
    {
        User user = users.get(0);
        int id = user.getId();

        String updatedName = "JDoe";
        String currentName = user.getUsername();

        user.setUsername(user.getUsername() + updatedName);
        dao.saveOrUpdate(user);
        User updatedUser = (User) dao.getById(id);

        assertEquals(user, updatedUser);
    }

    @Test
    public void testDeleteUser() throws Exception
    {
        int currentSize = users.size();
        User userToDelete = users.get(0);
        int id = userToDelete.getId();

        dao.delete(userToDelete);

        int sizeAfterDelete = dao.getAll().size();

        User deletedUser = (User) dao.getById(id);

        assertEquals(currentSize - 1, sizeAfterDelete);
        assertNull(deletedUser);
    }

    @Test
    public void testAddUser() throws Exception
    {
        int insertedUserId = 0;

        User userToAdd = new User();
        userToAdd.setUsername("JDoe");
        userToAdd.setEmail("jdoe@madisoncollege.edu");
        userToAdd.setPassword("password123");

        insertedUserId = dao.insert(userToAdd);
        User retrievedUser= (User) dao.getById(insertedUserId);

        assertTrue(insertedUserId > 0);
        assertEquals(userToAdd, retrievedUser);
    }
}
