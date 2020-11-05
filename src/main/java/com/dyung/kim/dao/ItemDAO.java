package com.dyung.kim.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dyung.kim.vo.ItemVO;

@Repository
public class ItemDAO {

	@Autowired
	private SqlSession session;

	public int itemInsert(ItemVO item) {
		int cnt = 0;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		try {
			cnt = mapper.itemInsert(item);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
	public ArrayList<HashMap<Object, Object>> selectItemAll() {
		ArrayList<HashMap<Object, Object>> map = null;
		ItemMapper mapper = session.getMapper(ItemMapper.class);
		
		try {
			map = mapper.selectItemAll();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
}
