package kr.smhrd.fuddy;

import java.io.File;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.smhrd.pojo.CommentVO;
import kr.smhrd.pojo.ImageVO;
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

	public String saveFile(MultipartFile[] upload, Model model, HttpSession session) {

		MemberVO info = (MemberVO) session.getAttribute("info");

		System.out.println("파일 저장 시작");
		// Logger log = LoggerFactory.getLogger(getClass());
		// 디렉토리에 폴더 생성
		String u_id = info.getU_id(); // 사용자의 아이디
		System.out.println(u_id);
		LocalDate now = LocalDate.now(); // 현재 날짜 구하기 = 신청 날짜

		String path = "C://Users/smhrd/git/Fuddy/Fuddy/src/main/webapp/resources/files/" + u_id + "_" + now; // 폴더 경로
		File Folder = new File(path);

		String p_name = Folder.getName();
		System.out.println(p_name);
		String p_path = Folder.getPath();
		System.out.println(p_path);

		// 디렉토리 생성
		if (!Folder.exists()) {
			try {
				Folder.mkdir(); // 폴더 생성
				System.out.println("폴더 생성");
			} catch (Exception e) {
				e.getStackTrace();
			}
		} else {
			System.out.println("이미 폴더가 존재합니다.");
		}

		System.out.println(path);

		// 파일 서버 컴퓨터에 저장 시작 ( resource/files/id_date 에 저장 )
		String folder = path; // 생성된 폴더로 경로 설정
		System.out.println(upload.length);
		ArrayList<String> folderlist = new ArrayList<String>();
		for (MultipartFile multipartFile : upload) {
			System.out.println("for문 내부");
			/*
			 * log.info("---------"); log.info("Upload File Name : " +
			 * multipartFile.getOriginalFilename()); log.info("Upload File Size : " +
			 * multipartFile.getSize());
			 */

			File saveFile = new File(folder, multipartFile.getOriginalFilename());
			System.out.println(saveFile);

			folderlist.add(multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				// log.error(e.getMessage());
			}

		}
		
		File Foldername = new File("resources/files/" + p_name + "/");
		System.out.println(folderlist);
		model.addAttribute("Foldername", Foldername);
		System.out.println("폴더이름" + Foldername);
		model.addAttribute("folderlist", folderlist);
		System.out.println("폴더리스트" + folderlist);
		
		// 다중 파라미터 사용 하기 위해
		HashMap<String, String> img = new HashMap<String, String>();
		img.put("u_id", u_id);
		img.put("p_path", p_path);
		img.put("p_name", p_name);
		// 딥러닝 전 이미지 파일 경로 및 이름 DB 저장
		mapper.image(img);
		int p_num = mapper.p_num(); // p_num의 값을 받기 위함
		System.out.println(p_num);

		List<ImageVO> imageSelect = mapper.imageSelect(p_num);
		model.addAttribute("imageSelect", imageSelect);

//		File[] files = Foldername.listFiles();
//		for(int i= 0; i<files.length; i++) {
//			folderlist.addAll(i);
//		}
//		return "redirect:/imageSelect.do"; // check.do
		return "redirect:/ImgCheck.do"; // 나중에 수정 }
	}

//	@RequestMapping("/imageSelect.do")
//	public String imageSelect(Model model) {
//
//		int p_num = mapper.p_num(); // p_num의 값을 받기 위함
//		System.out.println(p_num);
//
//		List<ImageVO> imageSelect = mapper.imageSelect(p_num);
//		model.addAttribute("imageSelect", imageSelect);
//		System.out.println(imageSelect.size());
//		return "redirect:/ImgCheck.do"; // 나중에 수정 }
//	}
}
