package gan.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class userSvc {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public userVO selectUserLogin(LoginVO param) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("selectUserLogin",param);
	}

	public void insertLogIn(String param) {
		// TODO Auto-generated method stub
		sqlSession.insert("insertLogIn",param);
	}
	
	public void insertLogOut(String param) {
		// TODO Auto-generated method stub
		sqlSession.insert("insertLogOut",param);
	}

	public void insertUserJoin(userVO param) {
		// TODO Auto-generated method stub
		sqlSession.insert("insertUserJoin",param);
	}

	public Integer selectUserIdChk(String param) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("selectUserIdChk",param);
	}

	public userVO selectUserOne(String param) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("selectUserOne",param);
	}

	public void updateUserInfo(userVO param) {
		// TODO Auto-generated method stub
		 sqlSession.update("updateUserInfo",param);
	}

	public void deleteUser(String param) {
		// TODO Auto-generated method stub
		sqlSession.update("deleteUser",param);
	}

	public Integer selectUserPwChk(userVO userInfo)  {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("selectUserPwChk",userInfo);
	}

	public void updatePw(userVO userInfo) {
		// TODO Auto-generated method stub
		sqlSession.update("updatePw",userInfo);
	}


}
