package org.gr.comeco.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gr.comeco.biz.ITeamBiz;
import org.gr.comeco.biz.IUserBiz;
import org.gr.comeco.biz.impl.TeamBizImpl;
import org.gr.comeco.biz.impl.UserBizImpl;
import org.gr.comeco.po.Advantage;
import org.gr.comeco.po.Team;
import org.gr.comeco.po.User;


/**
 * Servlet implementation class LoginServlet
 */
public class GetUsersInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetUsersInfoServlet() {
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
		
		int id=Integer.parseInt(new String(request.getParameter("id").getBytes("iso8859-1"), "UTF-8"));
		
		User user = new UserBizImpl().searchById(id);
		
		ITeamBiz iTeamBiz=new TeamBizImpl();
		IUserBiz iUserBiz=new UserBizImpl();
		
		List<Team> manageTeams = iTeamBiz.SearchByLeader(id);
		List<User> myFriends=iUserBiz.searchFriends(id);
		List<Team> myTeams=iTeamBiz.SearchByMember(id);
		List<Advantage> myAdvantages=iUserBiz.searchAdvantage(id);
		
		request.setAttribute("user", user);
		
		request.setAttribute("GetInfo", "OK");
		request.setAttribute("manageTeams", manageTeams);
		request.setAttribute("myFriends", myFriends);
		request.setAttribute("myTeams", myTeams);
		request.setAttribute("myAdvantages", myAdvantages);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("userinfo.jsp");
		dispatcher.forward(request, response);
	}

}
