package gan.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class adminSvc {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<?> selectAdUserList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selectAdUserList");
	}

}
