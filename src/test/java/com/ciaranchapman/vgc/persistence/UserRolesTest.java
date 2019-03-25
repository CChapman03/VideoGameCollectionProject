package com.ciaranchapman.vgc.persistence;

import com.ciaranchapman.vgc.entity.User;
import com.ciaranchapman.vgc.entity.UserRoles;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class UserRolesTest
{
    private GenericDao dao;
    private List<UserRoles> userRoles;

    @Before
    public void setup() throws Exception
    {
        this.dao = new GenericDao(UserRoles.class);
        this.userRoles = dao.getAll();
    }

    @Test
    public void testAllUserRoles() throws Exception
    {
        assertTrue(userRoles.size() > 0);
        assertFalse(userRoles.get(0).getRole().equals(""));
    }

    @Test
    public void testUpdateUserRole() throws Exception
    {
        UserRoles userRole = userRoles.get(0);
        int id = userRole.getId();

        String updatedRole = "Admin";
        String currentName = userRole.getRole();

        userRole.setRole(userRole.getRole() + updatedRole);
        dao.saveOrUpdate(userRole);
        UserRoles updatedUserRole = (UserRoles) dao.getById(id);

        assertEquals(userRole, updatedUserRole);
    }

    @Test
    public void testDeleteUserRole() throws Exception
    {
        int currentSize = userRoles.size();
        UserRoles userRoleToDelete = userRoles.get(0);
        int id = userRoleToDelete.getId();

        dao.delete(userRoleToDelete);

        int sizeAfterDelete = dao.getAll().size();

        UserRoles deletedUserRole = (UserRoles) dao.getById(id);

        assertEquals(currentSize - 1, sizeAfterDelete);
        assertNull(deletedUserRole);
    }

    @Test
    public void testAddUserRoles() throws Exception
    {
        int insertedUserRoleId = 0;

        UserRoles userRoleToAdd = new UserRoles();

        User user = new User();
        user.setUsername("JDoe");
        user.setEmail("jdoe@madisoncollege.edu");
        user.setPassword("password123");

        userRoleToAdd.setUser(user);
        userRoleToAdd.setRole("user");

        insertedUserRoleId = dao.insert(userRoleToAdd);
        UserRoles retrievedUserRole = (UserRoles) dao.getById(insertedUserRoleId);

        assertTrue(insertedUserRoleId > 0);
        assertEquals(userRoleToAdd, retrievedUserRole);
    }
}
