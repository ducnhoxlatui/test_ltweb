package vn.demo.homepage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "homepage",urlPatterns = "/homepage")
public class HomePage extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/homepage.jsp";
        // nhan su kien
        String action = request.getParameter("action");
        if(action== null){
            action= "join-page";
        }
        if(action.equals("return")){
            url = "/homepage.jsp";
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request,response);
        //
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request,response);
    }
}
