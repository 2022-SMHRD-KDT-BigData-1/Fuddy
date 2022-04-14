package kr.smhrd.fuddy;

import java.io.File;
import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


import kr.smhrd.pojo.MemberVO;
import kr.smhrd.pojo.PreventionMapper;
import kr.smhrd.pojo.PreventionVO;

@Controller
public class PreventionController {
	@Inject
	private PreventionMapper mapper;

	@RequestMapping("/PreventionInsert.do")
	public String PreventionInsert(PreventionVO vo) {
		System.out.println("방제 신청 기능 동작");
		mapper.PreventionInsert(vo);
		System.out.println(vo);
		return "redirect:/Main.do"; // 나중에 수정
	}

	@RequestMapping("/saveFile.do")

	public String saveFile(MultipartFile[] uploadFile, Model model ,HttpSession session) {
		MemberVO info = (MemberVO) session.getAttribute("info");
		
		System.out.println("파일 저장 시작");
		//Logger log = LoggerFactory.getLogger(getClass());
		// 디렉토리에 폴더 생성
		String id = info.getU_id(); //사용자의 아이디
		System.out.println(id);
		String date = "2022.4.11"; //신청 날짜
		
		String path = "C://Users/smhrd/git/Fuddy/Fuddy/src/main/webapp/resources/files/"+id+"_"+date; // 폴더 경로
		File Folder = new File(path);
		
		// 디렉토리 생성
		if(!Folder.exists()) {
			try {
				Folder.mkdir(); // 폴더 생성
				System.out.println("폴더 생성");
			}
			catch(Exception e) {
				e.getStackTrace();
			}
		} else {
			System.out.println("이미 폴더가 존재합니다.");
		}
		
		System.out.println(path);
		
		// 파일 서버 컴퓨터에 저장 시작 ( resource/files/id_date 에 저장 )
		String folder = path; // 생성된 폴더로 경로 설정
		System.out.println(uploadFile.length);
		for(MultipartFile multipartFile : uploadFile) {
			System.out.println("for문 내부");
			/*
			 * log.info("---------"); log.info("Upload File Name : " +
			 * multipartFile.getOriginalFilename()); log.info("Upload File Size : " +
			 * multipartFile.getSize());
			 */
			File saveFile = new File(folder, multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				//log.error(e.getMessage());
			}
			
		}
		
		// 딥러닝 전 이미지 파일 경로 및 이름 DB 저장
		return "redirect:/ImgCheck.do"; //check.do
	}
}
