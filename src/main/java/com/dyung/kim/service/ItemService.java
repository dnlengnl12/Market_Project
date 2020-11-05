package com.dyung.kim.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dyung.kim.dao.ItemDAO;
import com.dyung.kim.vo.ItemVO;

@Service
public class ItemService {

	@Autowired
	private ItemDAO dao;
	
	public String itemInsert(ItemVO item) {
		int cnt = dao.itemInsert(item);
		String page = "";
		if(cnt == 1) {
			page = "redirect:/";
		} else {
			page = "redirect:/board/boardWriteForm";
		}
		return page;
	}
	
	public ArrayList<HashMap<Object, Object>> selectItemAll() {
		ArrayList<HashMap<Object, Object>> map = dao.selectItemAll();
		return map;
	}
	
}
