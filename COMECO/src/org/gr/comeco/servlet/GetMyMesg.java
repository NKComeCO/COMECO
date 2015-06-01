package org.gr.comeco.servlet;

import java.io.IOException;
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
public class GetMyMesg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetMyMesg() {
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
		
		HttpSession session = request.getSession();
		User user=(User)session.getAttribute("user");
		
		ITeamBiz iTeamBiz=new TeamBizImpl();
		IUserBiz iUserBiz=new UserBizImpl();
		
		List<Team> manageTeams = iTeamBiz.searchByLeader(user.getId());
		List<User> myFriends=iUserBiz.searchFriends(user.getId());
		List<Team> myTeams=iTeamBiz.searchByMember(user.getId());
		List<Advantage> myAdvantages=iUserBiz.searchAdvantage(user.getId());
		List<Advantage> advantages=iUserBiz.searchAllAdvantage();
		
		request.setAttribute("GetInfo", "OK");
		request.setAttribute("manageTeams", manageTeams);
		request.setAttribute("myFriends", myFriends);
		request.setAttribute("myTeams", myTeams);
		request.setAttribute("myAdvantages", myAdvantages);
		request.setAttribute("advantages", advantages);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("personaldetails.jsp");
		dispatcher.forward(request, response);
	}

}
