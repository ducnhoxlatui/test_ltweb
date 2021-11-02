package vn.demo.downLoad;

import vn.demo.business.User;
import vn.demo.util.CookieUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import vn.demo.data.UserDB;

@WebServlet(name="checkUser",urlPatterns = "/download")
public class download extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if(action == null){
            action="viewAlbums";
        }
        String url ="/shoppingcard.jsp";
        if(action.equals("viewAlbums")){
            url= "/shoppingcard.jsp";
        }
        if(action.equals("return")){
            url = "/homepage.jsp";
        }
        if(action.equals("logOut")){
            url=deleteCookies(request,response);
        }else if(action.equals("checkUser")){
            url=checkUser(request,response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request,response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        String action = request.getParameter("action");
        String url = "/shoppingcard.jsp";
        if(action.equals("registerUser")){
            url= registerUser(request,response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request,response);
    }
    private String checkUser(HttpServletRequest request, HttpServletResponse response){
        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode",productCode);
        User user = (User) session.getAttribute("user");
        String url;
        if(user== null){
            Cookie[] cookies =request.getCookies();
            String emailAddress = CookieUtil.getCookieValue(cookies,"emailCookie");
            if(emailAddress == null || emailAddress.equals("")){
                url = "/register.jsp";
            }
            else {
                session.setAttribute("user",user);
                url= "/"+ productCode +"_download.jsp";
            }
        }
        else {
            url= "/"+ productCode +"_download.jsp";
        }
        return url;
    }
    private String registerUser(HttpServletRequest request, HttpServletResponse response){

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String message="";
        String check="";
        String url="";
        User user = new User(firstName,lastName,email);
        if(firstName == null || lastName == null || email == null
                || firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
            message = "Vui long nhap day du thong tin";
            url = "/register.jsp";
        }
        else if (UserDB.emailExists(email)){
            check="Email da bi trung";
            url="/register.jsp";

        }else {
            //UserData.insert(user);
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            Cookie c = new Cookie("emailCookie",email);
            c.setMaxAge(60*60*24*365*2);
            c.setPath("/");
            response.addCookie(c);
            String productCode = (String) session.getAttribute("productCode");
            url = "/" + productCode +"_download.jsp";
        }

        request.setAttribute("message", message);
        request.setAttribute("check",check);
        return url;
    }
    private String deleteCookies(HttpServletRequest request,
                                 HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url = "/shoppingcard.jsp";
        return url;
    }
}
