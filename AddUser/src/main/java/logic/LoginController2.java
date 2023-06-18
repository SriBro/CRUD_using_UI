package logic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController2
 */
@WebServlet("/LoginController2")
public class LoginController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id2 = Integer.parseInt(request.getParameter("id2"));
		User user2 = new User();
		user2.setId(id2);
		LoginDAO dao = new LoginDAO();
		if(dao.deleteData(user2)) {
			RequestDispatcher dispatcher =  request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher =  request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
	}

}
