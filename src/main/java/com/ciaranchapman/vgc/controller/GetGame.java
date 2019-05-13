package com.ciaranchapman.vgc.controller;

import com.ciaranchapman.vgc.entity.Game;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "GetGame", urlPatterns = { "/collection/add-game.jsp" } )
public class GetGame extends HttpServlet
{
    private final Logger logger = LogManager.getLogger(this.getClass());

    private String apiURL = "https://api.thegamesdb.net/";
    private final String apiKey = "058b3e21d74d2639ca76e5eabe5eb92f2e38b80eebc6587ef942d180929e21f7";

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {

    }

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
        String search = "Crash";
        if (req.getParameter("txt_search") != null)
        {
            search = req.getParameter("txt_search");
        }

        String data_url = apiURL + "Games/ByGameName?name=" + search + "&apikey=" + apiKey;

//        JSONParser parser = new JSONParser(data_url, Global.instance(), false);
//        JsonObject obj = (JsonObject) parser.parse();
//
//        JsonObject data = (JsonObject) obj.get("data");
//        JsonArray games = (JsonArray)  data.get("games");


        ArrayList<Game> games = new ArrayList<>();

        req.setAttribute("games", games);

        logger.debug("Sending back the games..." + games);
        logger.info("Games: " + games);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/collection/add-game" +
                ".jsp");
        dispatcher.forward(req, resp);
    }
}
