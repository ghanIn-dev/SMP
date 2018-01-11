package gan.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gan.study.studyVO;

@Service
public class memberSvc {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public memberVO selectMemOne(memberVO param) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("selectMemOne",param);
	}

	public List<Object> selectMemList(memberVO param) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selectMemList",param);
	}


	public void requestJoinMem(studyVO param) {
		// TODO Auto-generated method stub
		
		sqlSession.insert("requestJoinMem",param);
	}

	public void acceptJoinMem(studyVO param) {
		// TODO Auto-generated method stub
		sqlSession.update("acceptJoinMem",param);
	}
}
