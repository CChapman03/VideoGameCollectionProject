package com.ciaranchapman.vgc.persistence;

import com.ciaranchapman.vgc.entity.Developer;
import com.ciaranchapman.vgc.entity.Game;
import com.ciaranchapman.vgc.entity.Platform;
import com.ciaranchapman.vgc.entity.Publisher;
import com.ciaranchapman.vgc.test.util.DatabaseUtility;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class GameTest
{
    private GenericDao dao;
    private List<Game> games;
    private DatabaseUtility databaseUtility;

    @Before
    public void setup() throws Exception
    {
        this.dao = new GenericDao(Game.class);
        databaseUtility = new DatabaseUtility();
        databaseUtility.runSQL("cleandb.sql");
        databaseUtility.runSQL("createTestData.sql");
        games = dao.getAll();
    }

    @Test
    public void testGetAllGames()
    {
        assertTrue(games.size() > 0);
        assertFalse(games.get(0).getName().equals(""));
    }

    @Test
    public void testUpdateGame() throws Exception
    {
        Game game = games.get(0);
        int id = game.getId();

        String updatedName = "Spyro the Dragon";
        String currentName = game.getName();

        game.setName(game.getName() + updatedName);
        dao.saveOrUpdate(game);
        Game updatedGame = (Game) dao.getById(id);

        assertEquals(game, updatedGame);
    }

    @Test
    public void testDeleteGame() throws Exception
    {
        int currentSize = games.size();
        Game gameToDelete = games.get(0);
        int id = gameToDelete.getId();

        dao.delete(gameToDelete);

        int sizeAfterDelete = dao.getAll().size();

        Game deletedGame = (Game) dao.getById(id);

        assertEquals(currentSize - 1, sizeAfterDelete);
        assertNull(deletedGame);
    }

    @Test
    public void testAddGame() throws Exception
    {
        int insertedGameId = 0;

        Game gameToAdd = new Game();
        gameToAdd.setName("Crash Bandicoot");

        Platform platform = new Platform("PS1");
        gameToAdd.setPlatform(platform);

        gameToAdd.setRating("E - Everyone");

        Developer developer = new Developer("Naughty Dog");
        gameToAdd.setDeveloper(developer);

        Publisher publisher = new Publisher("Sony Computer Entertainment");
        gameToAdd.setPublisher(publisher);

        gameToAdd.setGenre("Platformer");
        gameToAdd.setPlayers(1);
        gameToAdd.setDescription("Crash Bandicoot, a heroic, agile and mutated marsupial who must save his girlfriend Tawna. The main antagonist is Doctor Neo Cortex, a mad scientist who was" +
                " often ridiculed by the scientific community for his outlandish (but nearly workable) theories and is now motivated to prove his tormentors wrong by creating a" +
                " mutated army of beasts to conquer the world. Cortex's henchman is Doctor Nitrus Brio, the insecure creator of the Evolvo-Ray. Crash's love interest is Tawna, a" +
                " female bandicoot about to undergo experimentation by the Doctors. Helping Crash in his journey is an ancient witch doctor spirit named Aku Aku, who has scattered masks of" +
                " himself throughout the islands to grant Crash special powers. The boss characters of the game include Papu Papu, the obese and short-tempered chief of the native village; Ripper Roo," +
                " a demented kangaroo with razor-sharp toenails; Koala Kong, a muscular but unintelligent koala; and Pinstripe Potoroo, the tommy gun-wielding bodyguard of Doctor Cortex.");


        insertedGameId = dao.insert(gameToAdd);
        Game retrievedGame = (Game) dao.getById(insertedGameId);

        assertTrue(insertedGameId > 0);
        assertEquals(gameToAdd, retrievedGame);
    }
}
