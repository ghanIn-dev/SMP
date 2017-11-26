package gan.admin;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import gan.user.userVO;

@Controller
public class adminCtr {

	@Autowired
	adminSvc adminSvc;
	
	//사용자 목록
	@RequestMapping(value="/adminUserList")
	public String adminUserList(ModelMap modelMap){
		
		List<?> userlist =  adminSvc.selectAdUserList();
		modelMap.addAttribute("userlist", userlist);
		
		return "admin/adminUserList";
	}
	//사용자 삭제
		@RequestMapping(value="/adminUserDel")
		public String adminUserDel(userVO userInfo, ModelMap modelMap){
			
			adminSvc.deleteAdUser(userInfo.getUserno());
			
			return "redirect:/adminUserList";
		}
}
