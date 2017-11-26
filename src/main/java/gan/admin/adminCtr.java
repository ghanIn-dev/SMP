package gan.admin;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminCtr {

	@Autowired
	adminSvc adminSvc;
	
	@RequestMapping(value="/adminUserList")
	public String adminUserList(ModelMap modelMap){
		
		List<?> userlist =  adminSvc.selectAdUserList();
		modelMap.addAttribute("userlist", userlist);
		
		return "admin/adminUserList";
	}
}
