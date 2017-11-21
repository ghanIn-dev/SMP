package gan.study;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class studyCtr {
	@Autowired
	studySvc studySvc;

	// 그룹 리스트 출력
	@RequestMapping(value = "/studyList")
	public String studyList(ModelMap modelMap) {
		List<?> listview = studySvc.selectStdList();
		modelMap.addAttribute("listview", listview);
		return "study/studyList";
	}

	// 그룹 만들기 및 수정 - 페이지 호출
	@RequestMapping(value = "/studyForm")
	public String studyForm(studyVO studyVO, ModelMap modelMap) {
		String Stdno = studyVO.getStdno();
		if (Stdno != null) {
			studyVO studyInfo = studySvc.selectStdOne(Stdno);
			modelMap.addAttribute("studyInfo", studyInfo);
		}
		return "study/studyForm";
	}

	// 그룹 만들기 및 수정 - 저장
	@RequestMapping(value = "/studyFormSave")
	public String studyFormSave(studyVO studyVO) {

		studySvc.insertStd(studyVO);

		return "redirect:/studyList";
	}

	// 그룹 읽기
	@RequestMapping(value = "/studyRead")
	public String studyRead(studyVO studyVO, ModelMap modelMap) {

		studyVO studyInfo = studySvc.selectStdOne(studyVO.getStdno());
		List<studyMenuVO> menuInfo = studySvc.selectMenu(studyInfo);
		modelMap.addAttribute("studyInfo", studyInfo);
		modelMap.addAttribute("menuInfo", menuInfo);
		return "study/studyRead";
	}

	// 그룹 삭제
	@RequestMapping(value = "/studyDel")
	public String studyDel(studyVO studyVO) {
		String Stdno = studyVO.getStdno();
		studySvc.delStd(Stdno);
		return "redirect:/studyList";
	}
}
