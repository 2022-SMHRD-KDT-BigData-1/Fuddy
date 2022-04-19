package kr.smhrd.fuddy;

import java.io.File;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
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

		String path = session.getServletContext().getRealPath("resources/files/") + u_id + "_" + now + "_"; // 폴더 경로
		File Folder = new File(path);

		String p_path = Folder.getPath();
		System.out.println("p_path : " + p_path);
		int cnt = 0;
		// 디렉토리 생성
		for (cnt = 1; cnt < 100; cnt++) {

			if (!Folder.exists()) {
				try {
					Folder.mkdir(); // 폴더 생성
					System.out.println("폴더 생성");
					break;
				} catch (Exception e) {
					e.getStackTrace();
				}
			} else {
				Folder = new File(path + cnt);
				System.out.println("이미 폴더가 존재합니다.");
			}
		}
		path = path + (cnt - 1);

		System.out.println("path : " + path);

		// 파일 서버 컴퓨터에 저장 시작 ( resource/files/id_date 에 저장 )
		String folder = path; // 생성된 폴더로 경로 설정
		System.out.println(upload.length);
		// ArrayList<String> folderlist = new ArrayList<String>();
		// 다중 파라미터 사용 하기 위해
		String p_folder = Folder.getName();
		for (MultipartFile multipartFile : upload) {
			HashMap<String, String> img = new HashMap<String, String>();
			System.out.println("for문 내부");
			/*
			 * log.info("---------"); log.info("Upload File Name : " +
			 * multipartFile.getOriginalFilename()); log.info("Upload File Size : " +
			 * multipartFile.getSize());
			 */

			File saveFile = new File(folder, multipartFile.getOriginalFilename());

			String p_name = multipartFile.getOriginalFilename();

			// img.put( 사용자이름, 패스, 폴더이름, 이미지 파일 이름 )
			img.put("u_id", u_id);
			img.put("p_path", path);
			img.put("p_folder", p_folder);
			System.out.println(p_folder);
			// folderlist0 이라는 이름으로 폴더리스트의 0번째를 저장하겠다.
			img.put("p_name", p_name);
			System.out.println(p_name);
			// DB접근 후 저장 (mapper)
			mapper.imageInsert(img);
			// 해쉬맵인 img clear ( 비우기 )

			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				// log.error(e.getMessage());
			}

		}
		HashMap<String, String> select = new HashMap<String, String>();
		select.put("u_id", u_id);
		select.put("p_folder", p_folder);
		List<ImageVO> ImageVO = mapper.imageSelect(select);
		System.out.println(ImageVO);
		session.setAttribute("ImageList", ImageVO);
		return "redirect:/ImgCheck.do"; // 나중에 수정 }
	}

}
