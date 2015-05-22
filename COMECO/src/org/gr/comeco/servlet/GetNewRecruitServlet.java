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

import org.gr.comeco.biz.impl.RecruitBizImpl;
import org.gr.comeco.po.Recruit;


/**
 * Servlet implementation class LoginServlet
 */
public class GetNewRecruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetNewRecruitServlet() {
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
		
		List<Recruit> recruitl = new RecruitBizImpl().searchNew();
		
		List<Recruit> printl=new ArrayList<Recruit>();
		for(int i=0;i<10&&i<recruitl.size();i++)printl.add(recruitl.get(i));
		
		HttpSession session = request.getSession();
		session.setAttribute("recruitl", printl);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("homepage.jsp");
		dispatcher.forward(request, response);
	}

}
