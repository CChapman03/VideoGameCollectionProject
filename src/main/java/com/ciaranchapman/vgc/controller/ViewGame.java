package com.ciaranchapman.vgc.controller;

import com.ciaranchapman.vgc.entity.Game;
import com.ciaranchapman.vgc.persistence.GenericDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ViewGame", urlPatterns = { "/collection/game-details" } )

public class ViewGame extends HttpServlet
{
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
        GenericDao<Game> dao = new GenericDao(Game.class);
        List<Game> game = dao.getAll();

        req.setAttribute("game", game.get(0));

        logger.debug("Sending back the game..." + game);
        logger.info("Game: " + game.get(0).getName());

        processError(req, resp);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/collection/game-details" +
                ".jsp");
        dispatcher.forward(req, resp);
    }

    private void processError(HttpServletRequest request,
                              HttpServletResponse response) throws IOException
    {
        // Analyze the servlet exception
        Throwable throwable = (Throwable) request
                .getAttribute("javax.servlet.error.exception");
        Integer statusCode = (Integer) request
                .getAttribute("javax.servlet.error.status_code");
        String servletName = (String) request
                .getAttribute("javax.servlet.error.servlet_name");

        if (servletName == null)
        {
            servletName = "Unknown";
        }

        String requestUri = (String) request
                .getAttribute("javax.servlet.error.request_uri");
        if (requestUri == null)
        {
            requestUri = "Unknown";
        }

        // Set response content type
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.write("<html><head><title>Exception/Error Details</title></head><body>");
        if(statusCode != 500)
        {
            out.write("<h3>Error Details</h3>");
            out.write("<strong>Status Code</strong>:" + statusCode + "<br>");
            out.write("<strong>Requested URI</strong>:" + requestUri);
        }
        else
        {
            out.write("<h3>Exception Details</h3>");
            out.write("<ul><li>Servlet Name:" + servletName + "</li>");
            out.write("<li>Exception Name:" + throwable.getClass().getName() + "</li>");
            out.write("<li>Requested URI:" + requestUri + "</li>");
            out.write("<li>Exception Message:" + throwable.getMessage() + "</li>");
            out.write("</ul>");
        }

        out.write("<br><br>");
        out.write("<a href=\"login.html\">Login Page</a>");
        out.write("</body></html>");
    }
}