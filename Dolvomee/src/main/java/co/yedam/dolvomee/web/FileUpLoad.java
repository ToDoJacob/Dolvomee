package co.yedam.dolvomee.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.dolvomee.comm.Command;
import co.yedam.dolvomee.service.users.UsersVO;

public class FileUpLoad implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {

		String saveFolder = "c:\\upload";
		
		UsersVO vo = new UsersVO();
		try {
			MultipartRequest multipartRequest = new MultipartRequest(request, saveFolder, 10*1024, "utf-8", new DefaultFileRenamePolicy());
			
			//파일 저장
			String fileName = multipartRequest.getFilesystemName("uploadFile");
			
			String original = multipartRequest.getOriginalFileName("uploadFile");
			
			vo.setUsersEmail(multipartRequest.getParameter("usersEmail"));
			vo.setUsersImage(multipartRequest.getParameter("usersImage"));
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
