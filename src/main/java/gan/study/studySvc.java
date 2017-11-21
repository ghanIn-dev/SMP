package gan.study;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class studySvc {
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<?> selectStdList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selectStdList");
	}

	public gan.study.studyVO selectStdOne(String param) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("selectStdOne",param);
	}


	public void insertStd(studyVO param) {
		// TODO Auto-generated method stub
		sqlSession.insert("insertStd",param);
	}

	public List<studyMenuVO> selectMenu(studyVO param) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selectMenu",param);
	}

	public void delStd(String param) {
		// TODO Auto-generated method stub
		sqlSession.delete("delStd",param);
	}
}
