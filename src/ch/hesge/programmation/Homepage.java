package ch.hesge.programmation;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Locale;

public class Homepage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        if(session == null){
            System.out.println("there is no session");
        }else{
            System.out.println("there is a session");
        }

        //Get cart items
        session.setAttribute("cart", 0);
        System.out.println("heyy : " + session.getAttribute("cart"));

        //Localité
        String param = request.getParameter("locale");
        Locale locale;
        if(param != null){
            locale = new Locale(param);
        }else{
            locale = request.getLocale();
        }
        session.setAttribute("locale", locale);

        request.getRequestDispatcher("/WEB-INF/index.jsp")
                .forward(request,response);

    }
}
