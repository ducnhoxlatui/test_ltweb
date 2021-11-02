package vn.demo.cart;

import vn.demo.business.Product;
import vn.demo.data.ProductDB;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/index_cart")
public class homecontroler  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList;
        productList = ProductDB.getProducts();
        HttpSession session = request.getSession();
        session.setAttribute("products", productList);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index_cart.jsp");
        requestDispatcher.forward(request,response);
    }
}
