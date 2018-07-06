package ir.kuroshfarsimadan.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ir.kuroshfarsimadan.bean.Person;
import ir.kuroshfarsimadan.dao.DAOException;
import ir.kuroshfarsimadan.dao.PersonDAO;

/**
 * Servlet implementation class PersonServlet
 */
@WebServlet("/persons")
public class PersonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PersonServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");

		Person h = new Person(firstname, lastname);

		try {
			PersonDAO pDao = new PersonDAO();
			pDao.add(h);
		} catch (DAOException e) {
			throw new ServletException(e);
		}

		response.sendRedirect("persons"); // redirect doGet
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Person> persons;

		try {
			// Retrieve database persons
			PersonDAO pDao = new PersonDAO();
			persons = pDao.retrieveAll();
		} catch (DAOException e) {
			throw new ServletException(e);
		}

		// Save the requests
		request.setAttribute("persons", persons);

		// Let the JSP to handle the view and data format
		request.getRequestDispatcher("persons.jsp").forward(request, response);

	}

}