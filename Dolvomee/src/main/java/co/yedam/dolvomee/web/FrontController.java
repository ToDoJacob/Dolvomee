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
import co.yedam.dolvomee.command.dolvomee.DolvUpdate;
import co.yedam.dolvomee.command.dolvomee.DolvUpdateForm;
import co.yedam.dolvomee.command.dolvomee.DolvomeeDelete;
import co.yedam.dolvomee.command.dolvomee.DolvomeeList;
import co.yedam.dolvomee.command.dolvomee.DolvomeeSelect;
import co.yedam.dolvomee.command.notice.NoticeDelete;
import co.yedam.dolvomee.command.notice.NoticeEditForm;
import co.yedam.dolvomee.command.notice.NoticeForm;
import co.yedam.dolvomee.command.notice.NoticeInsert;
import co.yedam.dolvomee.command.notice.NoticeList;
import co.yedam.dolvomee.command.notice.NoticeSelect;
import co.yedam.dolvomee.command.qna.QnaList;
import co.yedam.dolvomee.command.review.ReviewDelete;
import co.yedam.dolvomee.command.review.ReviewEdit;
import co.yedam.dolvomee.command.review.ReviewForm;
import co.yedam.dolvomee.command.review.ReviewInsert;
import co.yedam.dolvomee.command.review.ReviewList;
import co.yedam.dolvomee.command.review.ReviewSelect;
import co.yedam.dolvomee.command.schedule.ScheduleDolvomeeSelect;
import co.yedam.dolvomee.command.schedule.ScheduleList;
import co.yedam.dolvomee.command.schedule.UsersCart;
import co.yedam.dolvomee.command.schedule.CartList;
import co.yedam.dolvomee.command.users.Logout;

import co.yedam.dolvomee.command.users.UsersDelete;
import co.yedam.dolvomee.command.users.UsersDetail;

import co.yedam.dolvomee.command.users.UsersList;
import co.yedam.dolvomee.command.users.UsersLogin;
import co.yedam.dolvomee.command.users.UsersLoginForm;
import co.yedam.dolvomee.command.users.UsersRegister;
import co.yedam.dolvomee.command.users.UsersRegisterForm;
import co.yedam.dolvomee.command.users.UsersSelect;
import co.yedam.dolvomee.command.users.UsersUpdate;
import co.yedam.dolvomee.command.users.UsersUpdateForm;

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
		map.put("/scheduleList.do", new ScheduleList()); // 돌보미 서비스 리스트
		map.put("/scheduleDolvomeeSelect.do", new ScheduleDolvomeeSelect());
		
		//동관
		map.put("/reviewList.do", new ReviewList()); //리뷰목록
		map.put("/reviewForm.do", new ReviewForm()); //리뷰 등록 폼
		map.put("/reviewInsert.do", new ReviewInsert()); //리뷰 등록 처리
		map.put("/reviewSelect.do", new ReviewSelect()); //리뷰 상세페이지
		map.put("/reviewEdit.do", new ReviewEdit()); //리뷰 수정
		map.put("/reviewDelete.do", new ReviewDelete()); //리뷰 삭제
		map.put("/qnaList.do", new QnaList()); //1:1 문의
    
		//선영
		map.put("/usersLoginForm.do", new UsersLoginForm()); // 로그인 폼 호출
		map.put("/usersLogin.do", new UsersLogin()); // 사용자로그인 처리
		map.put("/dolvLogin.do", new DolvLogin()); // 돌보미로그인 처리
		map.put("/logout.do", new Logout()); //로그아웃 처리
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
		map.put("/noticeEditForm.do", new NoticeEditForm()); // 게시글 수정 폼 호출
		map.put("/noticeEdit.do", new NoticeEdit()); // 게시글 수정
		

    
		//은진
		map.put("/usersList.do", new UsersList()); //회원 리스트(관리자만)
		map.put("/usersSelect.do", new UsersSelect());	//회원 정보(관리자만)
		map.put("/usersDelete.do", new UsersDelete()); //회원 삭제(관리자권한) 
		map.put("/usersUpdateForm.do", new UsersUpdateForm()); //회원 수정 폼
		map.put("/usersUpdate.do", new UsersUpdate());	//회원 수정
		map.put("/dolvomeeList.do", new DolvomeeList()); //펫시터 리스트(관리자만)
		map.put("/dolvomeeSelect.do", new DolvomeeSelect()); //펫시터 정보(관리자만)
		map.put("/dolvomeeDelete.do", new DolvomeeDelete()); //펫시터 삭제(관리자권한)
		map.put("/dolvUpdateForm.do", new DolvUpdateForm()); //펫시터 수정 폼
		map.put("/dolvUpdate.do", new DolvUpdate()); //펫시터 수정
		map.put("/usersDetail.do", new UsersDetail()); //내 정보
		map.put("/cartList.do", new CartList()); // 회원 구매내역(관리자만)
		map.put("/usersCart.do", new UsersCart()); //회원 장바구니
		//map.put("/fileUpLoad.do", new FileUpLoad()); //파일 업로드

		
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

