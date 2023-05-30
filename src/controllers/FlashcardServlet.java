package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.MyCard;
import utils.DBUtil;

/**
 * Servlet implementation class FlashcardServlet
 */
@WebServlet("/flashcard")
public class FlashcardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlashcardServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        List<MyCard> mycard = em.createNamedQuery("getAllMyCard", MyCard.class).getResultList();

        em.close();

        request.setAttribute("mycard", mycard);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/mycard/flashcard.jsp");
        rd.forward(request, response);
    }
}
