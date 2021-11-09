package co.yedam.dolvomee.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.users.UsersService;
import co.yedam.dolvomee.service.users.UsersServiceImpl;
import co.yedam.dolvomee.service.users.UsersVO;

public class FileUpLoad implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		String saveFolder = "c:\\upload";

		UsersService usersDao = new UsersServiceImpl();
		UsersVO vo = new UsersVO();
		try {
			MultipartRequest multipartRequest = new MultipartRequest(request, saveFolder, 10 * 1024, "utf-8",
					new DefaultFileRenamePolicy());

			// 파일 저장
			String fileName = multipartRequest.getFilesystemName("uploadFile");

			String original = multipartRequest.getOriginalFileName("uploadFile");

			vo.setUsersPwd(multipartRequest.getParameter("usersPwd"));
			vo.setUsersPhone(multipartRequest.getParameter("usersPhone"));
			vo.setUsersAddr(multipartRequest.getParameter("usersAddr"));
			vo.setUsersImage(multipartRequest.getParameter("usersImage"));
			vo.setUsersAuthor(multipartRequest.getParameter("usersAuthor"));
			vo.setUsersEmail(multipartRequest.getParameter("usersEmail"));

			System.out.println(request.getParameter("usersEmail"));

			int n = usersDao.updateUser(vo);

			System.out.println(n);

			String viewPage = null;

			if (n != 0) {
				viewPage = "usersSelect.do";
			} else {
				viewPage = "home/home";
			}
			return viewPage;

		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
