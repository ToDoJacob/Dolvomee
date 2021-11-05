package co.yedam.dolvomee.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.command.HomeCommand;
import co.yedam.dolvomee.command.dolvomee.DolvRegisterForm;
import co.yedam.dolvomee.command.dolvomee.DolvomeeList;
import co.yedam.dolvomee.command.dolvomee.DolvRegisterForm;
import co.yedam.dolvomee.command.qna.qnaList;
import co.yedam.dolvomee.command.review.ReviewList;
import co.yedam.dolvomee.command.users.UsersList;
import co.yedam.dolvomee.command.users.UsersLogin;
import co.yedam.dolvomee.command.users.UsersLoginForm;
import co.yedam.dolvomee.command.users.UsersRegister;
import co.yedam.dolvomee.command.users.UsersRegisterForm;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {

		map.put("/home.do", new HomeCommand()); // 첫 페이지 호출
		map.put("/reviewList.do", new ReviewList()); //리뷰목록
		map.put("/usersLoginForm.do", new UsersLoginForm()); // 로그인 폼 호출
		map.put("/usersLogin.do", new UsersLogin()); // 로그인 처리
		map.put("/usersRegisterForm.do", new UsersRegisterForm()); // 사용자회원가입 폼 호출
		map.put("/registerUsers.do", new UsersRegister()); // 사용자회원가입 처리
		map.put("/dolvRegisterForm.do", new DolvRegisterForm()); // 돌보미 회원가입 폼 호출 
		map.put("/usersList.do", new UsersList()); //회원 리스트(관리자만)
		map.put("/dolvomeeList", new DolvomeeList()); //펫시터 리스트(관리자만)
		
    map.put("/qnaList.do", new qnaList());

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		System.out.println(uri);
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
		
		Command command = map.get(page);
		String viewPage = command.run(request, response);
		
		if(viewPage != null && !viewPage.endsWith(".do")) {
			if(viewPage.startsWith("ajax:")) {	//ajax 리턴 
				response.setContentType("text/plain; charset=utf-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			}
			
			if(viewPage.endsWith(".jsp"))	//타일즈 적용 안 할때
				viewPage = "WEB-INF/views/" + viewPage;
			else
				viewPage = viewPage + ".tiles"; //타일즈 적용
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}
		
}

