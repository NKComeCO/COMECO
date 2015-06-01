package org.gr.comeco.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gr.comeco.biz.impl.RecruitBizImpl;
import org.gr.comeco.biz.impl.TeamBizImpl;
import org.gr.comeco.biz.impl.UserBizImpl;
import org.gr.comeco.po.Recruit;
import org.gr.comeco.po.Team;
import org.gr.comeco.po.User;


/**
 * Servlet implementation class LoginServlet
 */
public class GetSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetSearchServlet() {
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
		
		int type=0;
		if(request.getParameter("type")!=null)type=Integer.parseInt(new String(request.getParameter("type").getBytes("iso8859-1"), "UTF-8"));

		String name = new String(request.getParameter("txt").getBytes("iso8859-1"), "UTF-8");
		
		switch(type){
		case 0:
			List<Team> teaml = new TeamBizImpl().searchByName(name);

			request.setAttribute("isTeam", "OK");
			request.setAttribute("teaml", teaml);
			break;
		case 1:
			List<User> userl = new UserBizImpl().searchByName(name);

			request.setAttribute("isUser", "OK");
			request.setAttribute("userl", userl);
			break;
		case 2:
			
			List<Recruit> recruitl = new RecruitBizImpl().searchByTeamname(name);

			request.setAttribute("isRecruit", "OK");
			request.setAttribute("recruitl", recruitl);
			
			break;
		}
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("searchresult.jsp");
		dispatcher.forward(request, response);
	}

}
