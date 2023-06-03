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

import models.ShareCard;
import utils.DBUtil;

@WebServlet("/share")
public class ShareServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;

    public ShareServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        List<ShareCard> sharecard = em.createNamedQuery("getAllShareCard", ShareCard.class).getResultList();

        em.close();

        request.setAttribute("sharecard", sharecard);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/sharecard/share.jsp");
        rd.forward(request, response);
    }
}