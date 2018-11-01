package online_shopping_store;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Profile
 */
@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(User.isLogged()) {
			request.setAttribute("imgURL", User.getLogedUser().getCiurl());
			request.setAttribute("cName", User.getLogedUser().getCname());
			System.out.print(User.getLogedUser().getCname());
			request.setAttribute("email", User.getLogedUser().getEmail());
			request.setAttribute("address", User.getLogedUser().getcAddress());
			request.getRequestDispatcher("/Profile.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
