package logic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name1");
		User user = new User();
		user.setName(name);
		LoginDAO dao = new LoginDAO();
		if(dao.insertData(user)) {
			RequestDispatcher dispatcher =  request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher =  request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
