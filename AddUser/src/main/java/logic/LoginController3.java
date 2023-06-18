package logic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginController3")
public class LoginController3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("updateName");
		User user3 = new User();
		user3.setId(id);
		user3.setName(name);
		LoginDAO dao = new LoginDAO();
		if(dao.updateUser(user3)) {
			RequestDispatcher dispatcher =  request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher =  request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
	}

}
