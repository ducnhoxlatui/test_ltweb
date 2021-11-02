package vn.demo.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import vn.demo.business.User;
import vn.demo.data.UserDB;

//@WebServlet(urlPatterns = {"/emailList", "/email/*"})
@WebServlet(name = "emailList",urlPatterns = "/emailList")
public class EmailListServer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/index.jsp";
        // nhan su kien
        String action = request.getParameter("action");
//        if(action== null){
//            action= "join";
//        }
        if(action.equals("join")){
            url = "/index.jsp";
        }
        if(action.equals("return")){
            url = "/homepage.jsp";
        }
        else if(action.equals("add")){
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            User user = new User(firstName,lastName,email);
            String message="";
            String check="";
            if(firstName == null || lastName == null || email == null
                    || firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                message = "Vui long nhap day du thong tin";
                url = "/index.jsp";
            }
            else if (UserDB.emailExists(email)){
                check="Email da bi trung";
                url="/index.jsp";

            }else {
                message ="ban da dang nhap thanh cong";
                //UserData.insert(user);
                url="/thank.jsp";
            }
            request.setAttribute("user",user);
            request.setAttribute("message", message);
            request.setAttribute("check",check);
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
