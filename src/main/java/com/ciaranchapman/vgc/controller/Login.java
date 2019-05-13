package com.ciaranchapman.vgc.controller;

import com.ciaranchapman.vgc.entity.Game;
import com.ciaranchapman.vgc.entity.User;
import com.ciaranchapman.vgc.persistence.GenericDao;
import com.ciaranchapman.vgc.util.DaoFactory;
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

@WebServlet(name = "Login", urlPatterns = { "/login" } )

public class Login extends HttpServlet
{
    private final Logger logger = LogManager.getLogger(this.getClass());

    /**
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password1 = req.getParameter("pwd");
        String password2 = req.getParameter("pwd2");

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password1);

        boolean isVerified = true;

        if (username.isEmpty() || email.isEmpty() || password1.isEmpty() || password2.isEmpty())
        {
            isVerified = false;
        }

        if (password1 != password2)
        {
            isVerified = false;
        }

        if (isVerified)
        {
            GenericDao dao = DaoFactory.createDao(User.class);
            dao.insert(user);
        }
        else
        {
            req.setAttribute("errorMessage", "Failed To Signup! - Please try again");
            logger.info("Failed Signup!");
        }

        RequestDispatcher dispatcher = req.getRequestDispatcher("/signupConfirmation" +
                ".jsp");
        dispatcher.forward(req, resp);
    }
}
