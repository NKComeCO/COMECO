package org.gr.comeco.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gr.comeco.biz.impl.TeamBizImpl;
import org.gr.comeco.po.Team;


/**
 * Servlet implementation class LoginServlet
 */
public class GetSearchTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetSearchTeamServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
				
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String name = new String(request.getParameter("txt").getBytes("iso8859-1"), "UTF-8");
		
		List<Team> teaml = new TeamBizImpl().SearchByName(name);
		
		HttpSession session = request.getSession();
		session.setAttribute("teaml", teaml);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("homepage.jsp");
		dispatcher.forward(request, response);
	}

}
