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
import co.yedam.dolvomee.command.NoticeEdit;
import co.yedam.dolvomee.command.dolvomee.AjaxDolvoAuthorCheck;
import co.yedam.dolvomee.command.dolvomee.DolvLogin;
import co.yedam.dolvomee.command.dolvomee.DolvRegister;
import co.yedam.dolvomee.command.dolvomee.DolvRegisterForm;
import co.yedam.dolvomee.command.dolvomee.DolvomeeList;
import co.yedam.dolvomee.command.notice.NoticeDelete;
import co.yedam.dolvomee.command.notice.NoticeForm;
import co.yedam.dolvomee.command.notice.NoticeInsert;
import co.yedam.dolvomee.command.notice.NoticeList;
import co.yedam.dolvomee.command.notice.NoticeSelect;
import co.yedam.dolvomee.command.qna.QnaList;
import co.yedam.dolvomee.command.review.ReviewForm;
import co.yedam.dolvomee.command.review.ReviewList;
import co.yedam.dolvomee.command.review.ReviewSelect;
import co.yedam.dolvomee.command.service.ServiceList;
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
		
		//준형
		map.put("/home.do", new HomeCommand()); // 첫 페이지 호출
		
		//동관
		map.put("/reviewList.do", new ReviewList()); //리뷰목록
		map.put("/reviewForm.do", new ReviewForm()); //리뷰 등록
		map.put("/reviewSelect.do", new ReviewSelect()); //리뷰 상세페이지
		map.put("/reviewEdit.do", new ReviewEdit()); //리뷰 수정
		map.put("/qnaList.do", new QnaList()); //1:1 문의
		
		//은진
		map.put("/usersList.do", new UsersList()); //회원 리스트(관리자만)
		map.put("/dolvomeeList", new DolvomeeList()); //펫시터 리스트(관리자만)
		map.put("/serviceList.do", new ServiceList()); // 돌보미 서비스 리스트
    
		//선영
		
		map.put("/usersLoginForm.do", new UsersLoginForm()); // 로그인 폼 호출
		map.put("/usersLogin.do", new UsersLogin()); // 사용자로그인 처리
		map.put("/dolvLogin.do", new DolvLogin()); // 돌보미로그인 처리
		map.put("/usersRegisterForm.do", new UsersRegisterForm()); // 사용자회원가입 폼 호출
		map.put("/usersRegister.do", new UsersRegister()); // 사용자회원가입 처리
		map.put("/dolvRegisterForm.do", new DolvRegisterForm()); // 돌보미 회원가입 폼 호출
		map.put("/dolvRegister.do", new DolvRegister()); // 돌보미 회원가입 처리
		map.put("/ajaxDolvoAuthorCheck.do", new AjaxDolvoAuthorCheck()); //돌보미 권한 체크
		map.put("/noticeList.do", new NoticeList()); //게시글 목록
		map.put("/noticeSelect.do", new NoticeSelect()); //세부내역보기
		map.put("/noticeForm.do", new NoticeForm()); // 게시글 입력 폼
		map.put("/noticeInsert.do", new NoticeInsert()); // 게시글 저장
		map.put("/noticeDelete.do", new NoticeDelete()); // 게시글 삭제
		map.put("/noticeEdit.do", new NoticeEdit()); // 게시글 수정
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

