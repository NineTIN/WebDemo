package ninetin.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import ninetin.common.dao.DAO;

@Repository("sampleDAO")
public class SampleDAO extends DAO{

	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("sample.selectBoardList", map);
	}

	public void insertBoard(Map<String, Object> map) throws Exception{
		insert("sample.insertBoard", map);
	}
}
