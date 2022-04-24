package kr.smhrd.fuddy;

import java.io.File;
import java.time.LocalDate;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.smhrd.pojo.D_MemberVO;
import kr.smhrd.pojo.DeepVO;
import kr.smhrd.pojo.ImageVO;
import kr.smhrd.pojo.MemberVO;
import kr.smhrd.pojo.PreventionMapper;
import kr.smhrd.pojo.PreventionVO;

@Controller
public class PreventionController {
	@Inject
	private PreventionMapper mapper;

	@RequestMapping("/PreventionInsert.do")
	public String PreventionInsert(PreventionVO vo, HttpSession session, Model model) {
		System.out.println("방제 신청 기능 동작");
		System.out.println(vo);
		mapper.PreventionInsert(vo);
		return "redirect:/Main.do";
	}

	@RequestMapping("/saveFile.do")
	public String saveFile(MultipartFile[] upload, Model model, HttpSession session) {

		// MultipartRequest mreQuest = new MultipartRequest() {

		MemberVO info = (MemberVO) session.getAttribute("info");

		System.out.println("파일 저장 시작");
		// Logger log = LoggerFactory.getLogger(getClass());
		// 디렉토리에 폴더 생성
		String u_id = info.getU_id(); // 사용자의 아이디
		System.out.println(u_id);
		LocalDate now = LocalDate.now(); // 현재 날짜 구하기 = 신청 날짜

		// String path = session.getServletContext().getRealPath("resources/files/") + u_id + "_" + now + "_"; // 폴더 경로

		// aws 파일 경로
		String path = "/home/ubuntu/web/resources/files/" + u_id + "_" + now + "_"; // 폴더 경로
		// String path = "C:\\Users\\smhrd\\Desktop\\file\\" + u_id + "_" + now + "_";
		// // 폴더 경로
		File Folder = new File(path);

		String p_path = Folder.getPath();
		System.out.println("p_path file내에 폴더 생성 : " + p_path);
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

		System.out.println("path 이미지 저장 경로 : " + path);

		// 파일 서버 컴퓨터에 저장 시작 ( resource/files/id_date 에 저장 )
		String folder = path; // 생성된 폴더로 경로 설정
		System.out.println(upload.length);
		// ArrayList<String> folderlist = new ArrayList<String>();
		// 다중 파라미터 사용 하기 위해
		String p_folder = Folder.getName();

		for (MultipartFile multipartFile : upload) {

			// HashMap<String, String> img = new HashMap<String, String>();
			System.out.println("for문 내부");
			/*
			 * log.info("---------"); log.info("Upload File Name : " +
			 * multipartFile.getOriginalFilename()); log.info("Upload File Size : " +
			 * multipartFile.getSize());
			 */

			File saveFile = new File(folder, multipartFile.getOriginalFilename());

			String p_name = multipartFile.getOriginalFilename();

			// private int p_num; //사진번호
			// private String u_id; //회원 아이디
			// private String p_path; //사진 경로
			// private String p_folder; //폴더 이름
			// private String p_name; //사진 이름
			// private String p_date; //등록 날짜
			ImageVO img = new ImageVO(0, u_id, p_path, p_folder, p_name, null);
			// img.put( 사용자이름, 패스, 폴더이름, 이미지 파일 이름 )
			System.out.println("img : " + img);
			mapper.imageInsert(img);
			System.out.println("img 완료");
			// img.put("u_id", u_id);
			// img.put("p_path", path);
			// img.put("p_folder", p_folder);
			// img.put("p_name", p_name);
			// folderlist0 이라는 이름으로 폴더리스트의 0번째를 저장하겠다.

			// DB접근 후 저장 (mapper)
			// mapper.imageInsert(img);
			// 해쉬맵인 img clear ( 비우기 )

			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				// log.error(e.getMessage());
			}
		}
		// HashMap<String, String> select = new HashMap<String, String>();
		// select.put("u_id", u_id);
		// select.put("p_folder", p_folder);
		// select.put("deep_folder", p_folder);
		ImageVO imgCheck = new ImageVO(u_id, p_folder);
		List<ImageVO> img_list = mapper.imageSelect(imgCheck);
		System.out.println("img_list : " + img_list);
		session.setAttribute("ImageList", img_list);

		return "redirect:/ImgCheck.do"; // 나중에 수정 }
	}

	@RequestMapping("/deepSelect.do")
	public String deepSelect(DeepVO vo, HttpSession session, Model model) {
		System.out.println("딥 분석 기능 동작");
		List<ImageVO> list = (List<ImageVO>) session.getAttribute("ImageList");
		System.out.println("세션에 저장된 이미지 리스트 : " + list);
		for (int i = 0; i < list.size(); i++) {
			String u_id = list.get(i).getU_id();
			int p_num = list.get(i).getP_num();
			System.out.println(p_num);
			System.out.println(u_id);
			String deep_folder = list.get(i).getP_folder();
			System.out.println(deep_folder);

			DeepVO deepCheck = new DeepVO(u_id, deep_folder);
			List<DeepVO> deeplist = mapper.deepSelect(deepCheck);
			System.out.println("deeplist : " + deeplist);
			session.setAttribute("deeplist", deeplist);
			session.setAttribute("p_num", p_num);
		}

		// 관리자 총합
		int amount = mapper.AdminAmount();
		System.out.println(amount);
		Random rd = new Random();

		int randomAdmin = rd.nextInt(8) + 1;
		System.out.println(randomAdmin);

		String admin_id = "admin_id 0" + randomAdmin;
		System.out.println(admin_id);
		D_MemberVO adminVO = mapper.AdminSelect(admin_id);
		System.out.println("성공");
		System.out.println(adminVO);

		session.setAttribute("adminVO", adminVO);

		return "redirect:/ImgCom.do"; // 나중에 수정
	}

	@RequestMapping("/lookupUpdate.do")
	public String lookupUpdate(PreventionVO vo) {
		System.out.println("방제 내역 수정 기능 동작");
		System.out.println(vo);
		mapper.lookupUpdate(vo);
		return "redirect:/Main.do";
	}
}
