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
import org.gr.comeco.po.Type;
import org.gr.comeco.po.User;


/**
 * Servlet implementation class LoginServlet
 */
public class GetTeamInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetTeamInfoServlet() {
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

		int id = Integer.parseInt(new String(request.getParameter("id").getBytes("iso8859-1"), "UTF-8"));
		
		Team team = new TeamBizImpl().searchById(id);
		
		
		HttpSession session = request.getSession();
		request.setAttribute("team", team);
		User user=(User)session.getAttribute("user");
		List<Type> type=new TeamBizImpl().searchType(team.getId());
		request.setAttribute("type", type);
		
		String url="team.jsp";
		
		if(team.getLeader_id()==user.getId()){
			url="team_leader.jsp";
		}
		else{
			List<User> users=new TeamBizImpl().searchMember(team.getId());
			for(User u:users){
				if(u.getId()==user.getId()){
					url="team_member.jsp";
					break;
				}
			}
		}
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
