package gan.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;

import gan.study.studyVO;
import gan.user.userVO;



@Controller
public class memberCtr {
	@Autowired
	memberSvc memberSvc;


	// 그룹 회원관리
	@RequestMapping(value = "/stdMemList")
	public String memList(memberVO memberInfo,ModelMap modelMap){ 	
		List<?> listview = memberSvc.selectMemList(memberInfo);	
		modelMap.addAttribute("listview", listview);
		return "member/studyMemList";
	}
	// 그룹 가입신청
	@RequestMapping(value = "/requestJoinMem")
	public String requestJoinMem(HttpServletRequest request,studyVO studyVO,ModelMap modelMap){ 
		HttpSession session = request.getSession();
		String userno = session.getAttribute("userno").toString();
		
		studyVO.setUserno(userno);
		memberSvc.requestJoinMem(studyVO);
		return "redirect:/studyList";
	}
	// 그룹 가입 허가
	@RequestMapping(value = "/acceptJoinMem")
	public String acceptJoinMem(HttpServletRequest request,studyVO studyVO,ModelMap modelMap){ 
		
		String userno = request.getParameter("userno");
		
		studyVO.setUserno(userno);
		memberSvc.acceptJoinMem(studyVO);
		return "redirect:/studyList";
	}
}
